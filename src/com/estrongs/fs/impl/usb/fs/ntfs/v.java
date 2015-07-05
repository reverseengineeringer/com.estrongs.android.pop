package com.estrongs.fs.impl.usb.fs.ntfs;

import android.util.Log;
import com.estrongs.fs.impl.usb.fs.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

public class v
  implements c, h
{
  private static final String a = v.class.getSimpleName();
  private boolean b = false;
  private final com.estrongs.fs.impl.usb.fs.ntfs.b.h c;
  private n d;
  private c e;
  private ArrayList<c> f = new ArrayList();
  private final y g;
  private final String h;
  
  public v(y paramy, n paramn)
  {
    g = paramy;
    c = new com.estrongs.fs.impl.usb.fs.ntfs.b.h(paramn);
    d = paramn;
    h = Long.toString(paramn.f());
  }
  
  private void n()
  {
    if (f.size() == 0)
    {
      Iterator localIterator = m();
      while (localIterator.hasNext())
      {
        Object localObject = (w)localIterator.next();
        if ((((w)localObject).b() == null) || ((!((w)localObject).b().startsWith("$")) && (!((w)localObject).b().equals(".")))) {
          if (((w)localObject).d())
          {
            localObject = (c)((w)localObject).a();
            ((c)localObject).a(this);
            f.add(localObject);
          }
          else if (((w)localObject).c())
          {
            localObject = (c)((w)localObject).e();
            ((c)localObject).a(this);
            f.add(localObject);
          }
        }
      }
    }
  }
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void a(c paramc)
  {
    e = paramc;
  }
  
  public void a(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public boolean a()
  {
    return true;
  }
  
  public c b(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public String b()
  {
    if (e == null) {
      return g.b();
    }
    return d.i();
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void b(c paramc)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public c c()
  {
    return e;
  }
  
  public c c(String paramString)
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public void close() {}
  
  public i d(String paramString)
  {
    if (b) {
      Log.d(a, "getEntry(" + paramString + ")");
    }
    Iterator localIterator = m();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      if (localw.b().equals(paramString)) {
        return localw;
      }
    }
    return null;
  }
  
  public String[] d()
  {
    n();
    String[] arrayOfString = new String[f.size()];
    int i = 0;
    while (i < f.size())
    {
      arrayOfString[i] = ((c)f.get(i)).b();
      i += 1;
    }
    return arrayOfString;
  }
  
  public c[] e()
  {
    n();
    return (c[])f.toArray(new c[0]);
  }
  
  public long f()
  {
    return 0L;
  }
  
  public void g() {}
  
  public void h()
  {
    throw new UnsupportedOperationException("unsupported operation");
  }
  
  public long i()
  {
    return d.j().b();
  }
  
  public long j()
  {
    return d.j().a();
  }
  
  public boolean k()
  {
    return StandardInformationAttribute.Flags.READ_ONLY.isSet(d.j().c());
  }
  
  public boolean l()
  {
    return StandardInformationAttribute.Flags.HIDDEN.isSet(d.j().c());
  }
  
  public Iterator<i> m()
  {
    return new g(g, c);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */