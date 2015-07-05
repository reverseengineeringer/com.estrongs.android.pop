package de.innosystec.unrar;

import de.innosystec.unrar.exception.RarException;
import de.innosystec.unrar.exception.RarException.RarExceptionType;
import de.innosystec.unrar.rarfile.UnrarHeadertype;
import de.innosystec.unrar.rarfile.e;
import de.innosystec.unrar.rarfile.g;
import de.innosystec.unrar.rarfile.i;
import de.innosystec.unrar.rarfile.j;
import de.innosystec.unrar.rarfile.k;
import de.innosystec.unrar.rarfile.l;
import de.innosystec.unrar.rarfile.n;
import de.innosystec.unrar.rarfile.o;
import de.innosystec.unrar.rarfile.p;
import de.innosystec.unrar.rarfile.q;
import java.io.Closeable;
import java.io.File;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class a
  implements Closeable
{
  private static Logger a = Logger.getLogger(a.class.getName());
  private File b;
  private de.innosystec.unrar.b.a c;
  private d d;
  private final de.innosystec.unrar.unpack.a e;
  private final List<de.innosystec.unrar.rarfile.b> f = new ArrayList();
  private l g = null;
  private k h = null;
  private de.innosystec.unrar.rarfile.f i = null;
  private de.innosystec.unrar.unpack.b j;
  private long k = -1L;
  private int l;
  private boolean m = false;
  private int n = 0;
  private long o = 0L;
  private long p = 0L;
  private String q = "GBK";
  private boolean r = false;
  private Map<String, g> s = new LinkedHashMap();
  private com.estrongs.io.a.b t;
  private c u;
  
  public a(File paramFile, String paramString, c paramc, d paramd, boolean paramBoolean)
  {
    q = paramString;
    u = paramc;
    r = paramBoolean;
    a(paramFile);
    d = paramd;
    e = new de.innosystec.unrar.unpack.a(this);
  }
  
  private void b(g paramg, OutputStream paramOutputStream)
  {
    e.a(paramOutputStream);
    e.a(paramg);
    paramOutputStream = e;
    if (g()) {}
    for (long l1 = 0L;; l1 = -1L)
    {
      paramOutputStream.a(l1);
      if (j == null) {
        j = new de.innosystec.unrar.unpack.b(e);
      }
      if (!paramg.w()) {
        j.a(null);
      }
      j.a(paramg.t());
      try
      {
        j.a(paramg.r(), paramg.w());
        if ((t != null) && (t.b())) {
          return;
        }
        paramg = e.c();
        if (!paramg.u()) {
          break label228;
        }
        l1 = e.a() ^ 0xFFFFFFFFFFFFFFFF;
      }
      catch (Exception paramg)
      {
        for (;;)
        {
          int i1;
          j.b();
          if (!(paramg instanceof RarException)) {
            break;
          }
          throw ((RarException)paramg);
          l1 = e.b();
          l1 ^= 0xFFFFFFFFFFFFFFFF;
        }
        throw new RarException(paramg);
      }
      i1 = paramg.m();
      if (l1 != i1) {
        throw new RarException(RarException.RarExceptionType.crcError, paramg.n() + " expectedCRC = " + i1 + ",actualCRC = " + l1);
      }
      label228:
      return;
    }
  }
  
  private void l()
  {
    g = null;
    h = null;
    i = null;
    f.clear();
    s.clear();
    l = 0;
    long l1 = b.length();
    Object localObject1;
    long l2;
    Object localObject2;
    long l3;
    for (;;)
    {
      if ((u != null) && (u.a()))
      {
        f.clear();
        s.clear();
      }
      do
      {
        return;
        localObject1 = new byte[7];
        l2 = c.a();
      } while ((l2 >= l1) || (c.a((byte[])localObject1, 7) == 0));
      localObject1 = new de.innosystec.unrar.rarfile.b((byte[])localObject1);
      ((de.innosystec.unrar.rarfile.b)localObject1).a(l2);
      localObject2 = ((de.innosystec.unrar.rarfile.b)localObject1).i();
      if (localObject2 == null) {
        throw new RarException(RarException.RarExceptionType.wrongHeaderType);
      }
      switch (b.b[localObject2.ordinal()])
      {
      default: 
        localObject2 = new byte[4];
        c.a((byte[])localObject2, 4);
        localObject1 = new de.innosystec.unrar.rarfile.c((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);
        switch (b.b[localObject1.i().ordinal()])
        {
        default: 
          a.warning("Unknown Header");
          throw new RarException(RarException.RarExceptionType.notRarArchive);
        }
      case 5: 
        g = new l((de.innosystec.unrar.rarfile.b)localObject1);
        if (!g.l()) {
          throw new RarException(RarException.RarExceptionType.badRarArchive);
        }
        f.add(g);
        break;
      case 6: 
        if (((de.innosystec.unrar.rarfile.b)localObject1).c()) {}
        for (i1 = 7;; i1 = 6)
        {
          localObject2 = new byte[i1];
          c.a((byte[])localObject2, i1);
          localObject1 = new k((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);
          f.add(localObject1);
          h = ((k)localObject1);
          if (!h.o()) {
            break;
          }
          throw new RarException(RarException.RarExceptionType.rarEncryptedException);
        }
      case 7: 
        localObject2 = new byte[8];
        c.a((byte[])localObject2, 8);
        localObject1 = new o((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);
        f.add(localObject1);
        break;
      case 8: 
        localObject2 = new byte[7];
        c.a((byte[])localObject2, 7);
        localObject1 = new de.innosystec.unrar.rarfile.a((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);
        f.add(localObject1);
        break;
      case 9: 
        localObject2 = new byte[6];
        c.a((byte[])localObject2, 6);
        localObject1 = new de.innosystec.unrar.rarfile.d((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);
        f.add(localObject1);
        l2 = ((de.innosystec.unrar.rarfile.d)localObject1).e();
        l3 = ((de.innosystec.unrar.rarfile.d)localObject1).h();
        c.a(l2 + l3);
      }
    }
    if (((de.innosystec.unrar.rarfile.b)localObject1).a()) {}
    for (int i1 = 4;; i1 = 0)
    {
      int i2 = i1;
      if (((de.innosystec.unrar.rarfile.b)localObject1).b()) {
        i2 = i1 + 2;
      }
      if (i2 > 0)
      {
        localObject2 = new byte[i2];
        c.a((byte[])localObject2, i2);
      }
      for (localObject1 = new de.innosystec.unrar.rarfile.f((de.innosystec.unrar.rarfile.b)localObject1, (byte[])localObject2);; localObject1 = new de.innosystec.unrar.rarfile.f((de.innosystec.unrar.rarfile.b)localObject1, null))
      {
        f.add(localObject1);
        i = ((de.innosystec.unrar.rarfile.f)localObject1);
        return;
      }
      i1 = ((de.innosystec.unrar.rarfile.c)localObject1).h() - 7 - 4;
      localObject2 = new byte[i1];
      c.a((byte[])localObject2, i1);
      if ((r) && (s.size() > 0)) {
        r = false;
      }
      localObject1 = new g((de.innosystec.unrar.rarfile.c)localObject1, (byte[])localObject2, this);
      s.put(((g)localObject1).n(), localObject1);
      f.add(localObject1);
      l2 = ((g)localObject1).e();
      l3 = ((g)localObject1).h();
      long l4 = ((g)localObject1).s();
      c.a(l2 + l3 + l4);
      break;
      i1 = ((de.innosystec.unrar.rarfile.c)localObject1).h() - 7 - 4;
      localObject2 = new byte[i1];
      c.a((byte[])localObject2, i1);
      localObject1 = new n((de.innosystec.unrar.rarfile.c)localObject1, (byte[])localObject2);
      l2 = ((n)localObject1).e();
      l3 = ((n)localObject1).h();
      c.a(l2 + l3);
      break;
      localObject2 = new byte[3];
      c.a((byte[])localObject2, 3);
      localObject1 = new p((de.innosystec.unrar.rarfile.c)localObject1, (byte[])localObject2);
      ((p)localObject1).j();
      switch (b.a[localObject1.n().ordinal()])
      {
      case 2: 
      case 4: 
      case 5: 
      default: 
        break;
      case 1: 
        localObject2 = new byte[8];
        c.a((byte[])localObject2, 8);
        localObject1 = new j((p)localObject1, (byte[])localObject2);
        ((j)localObject1).j();
        f.add(localObject1);
        break;
      case 3: 
        localObject2 = new byte[10];
        c.a((byte[])localObject2, 10);
        localObject1 = new e((p)localObject1, (byte[])localObject2);
        ((e)localObject1).j();
        f.add(localObject1);
        break;
      case 6: 
        i1 = ((p)localObject1).h() - 7 - 4 - 3;
        localObject2 = new byte[i1];
        c.a((byte[])localObject2, i1);
        localObject1 = new q((p)localObject1, (byte[])localObject2);
        ((q)localObject1).j();
        f.add(localObject1);
        break;
      }
    }
  }
  
  private void m()
  {
    long l1 = b.length();
    Object localObject1 = new byte[0];
    long l2 = c.a();
    for (;;)
    {
      if ((u != null) && (u.a())) {}
      long l3;
      do
      {
        c.a(l2);
        return;
        localObject2 = new byte[7];
        l3 = c.a();
      } while ((l3 >= l1) || (c.a((byte[])localObject2, 7) == 0));
      Object localObject2 = new de.innosystec.unrar.rarfile.b((byte[])localObject2);
      ((de.innosystec.unrar.rarfile.b)localObject2).a(l3);
      Object localObject3 = ((de.innosystec.unrar.rarfile.b)localObject2).i();
      if (localObject3 == null) {
        throw new RarException(RarException.RarExceptionType.wrongHeaderType);
      }
      int i1;
      long l4;
      switch (b.b[localObject3.ordinal()])
      {
      default: 
        localObject3 = new byte[4];
        c.a((byte[])localObject3, 4);
        localObject2 = new de.innosystec.unrar.rarfile.c((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3);
        switch (b.b[localObject2.i().ordinal()])
        {
        default: 
          a.warning("Unknown Header");
          throw new RarException(RarException.RarExceptionType.notRarArchive);
        }
      case 5: 
        g = new l((de.innosystec.unrar.rarfile.b)localObject2);
        if (!g.l()) {
          throw new RarException(RarException.RarExceptionType.badRarArchive);
        }
        break;
      case 6: 
        if (((de.innosystec.unrar.rarfile.b)localObject2).c()) {}
        for (i1 = 7;; i1 = 6)
        {
          localObject3 = new byte[i1];
          c.a((byte[])localObject3, i1);
          if (!new k((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3).o()) {
            break;
          }
          throw new RarException(RarException.RarExceptionType.rarEncryptedException);
        }
      case 7: 
        localObject3 = new byte[8];
        c.a((byte[])localObject3, 8);
        new o((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3);
        break;
      case 8: 
        localObject3 = new byte[7];
        c.a((byte[])localObject3, 7);
        new de.innosystec.unrar.rarfile.a((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3);
        break;
      case 9: 
        localObject3 = new byte[6];
        c.a((byte[])localObject3, 6);
        localObject2 = new de.innosystec.unrar.rarfile.d((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3);
        l3 = ((de.innosystec.unrar.rarfile.d)localObject2).e();
        l4 = ((de.innosystec.unrar.rarfile.d)localObject2).h();
        c.a(l3 + l4);
        break;
      case 10: 
        i1 = 0;
        if (((de.innosystec.unrar.rarfile.b)localObject2).a()) {
          i1 = 4;
        }
        int i2 = i1;
        if (((de.innosystec.unrar.rarfile.b)localObject2).b()) {
          i2 = i1 + 2;
        }
        if (i2 > 0)
        {
          localObject3 = new byte[i2];
          c.a((byte[])localObject3, i2);
          new de.innosystec.unrar.rarfile.f((de.innosystec.unrar.rarfile.b)localObject2, (byte[])localObject3);
        }
        for (;;)
        {
          if (r)
          {
            localObject1 = com.estrongs.android.util.f.a((byte[])localObject1, localObject1.length);
            if (Charset.isSupported((String)localObject1)) {
              q = ((String)localObject1);
            }
            r = false;
          }
          c.a(l2);
          return;
          new de.innosystec.unrar.rarfile.f((de.innosystec.unrar.rarfile.b)localObject2, null);
        }
        i1 = ((de.innosystec.unrar.rarfile.c)localObject2).h() - 7 - 4;
        localObject3 = new byte[i1];
        c.a((byte[])localObject3, i1);
        localObject3 = new i((de.innosystec.unrar.rarfile.c)localObject2, (byte[])localObject3, this);
        localObject2 = localObject1;
        if (((i)localObject3).o()) {
          localObject2 = com.estrongs.android.util.f.a((byte[])localObject1, ((i)localObject3).q());
        }
        l3 = ((i)localObject3).e();
        l4 = ((i)localObject3).h();
        long l5 = ((i)localObject3).m();
        c.a(l3 + l4 + l5);
        localObject1 = localObject2;
        if (localObject2.length >= 1024)
        {
          localObject1 = localObject2;
          if (r)
          {
            localObject1 = com.estrongs.android.util.f.a((byte[])localObject2, localObject2.length);
            if (Charset.isSupported((String)localObject1)) {
              q = ((String)localObject1);
            }
            r = false;
            c.a(l2);
            return;
            i1 = ((de.innosystec.unrar.rarfile.c)localObject2).h() - 7 - 4;
            localObject3 = new byte[i1];
            c.a((byte[])localObject3, i1);
            localObject2 = new n((de.innosystec.unrar.rarfile.c)localObject2, (byte[])localObject3);
            l3 = ((n)localObject2).e();
            l4 = ((n)localObject2).h();
            c.a(l3 + l4);
            continue;
            localObject3 = new byte[3];
            c.a((byte[])localObject3, 3);
            localObject2 = new p((de.innosystec.unrar.rarfile.c)localObject2, (byte[])localObject3);
            ((p)localObject2).j();
            switch (b.a[localObject2.n().ordinal()])
            {
            case 2: 
            case 4: 
            case 5: 
            default: 
              break;
            case 1: 
              localObject3 = new byte[8];
              c.a((byte[])localObject3, 8);
              new j((p)localObject2, (byte[])localObject3).j();
              break;
            case 3: 
              localObject3 = new byte[10];
              c.a((byte[])localObject3, 10);
              new e((p)localObject2, (byte[])localObject3).j();
              break;
            case 6: 
              i1 = ((p)localObject2).h() - 7 - 4 - 3;
              localObject3 = new byte[i1];
              c.a((byte[])localObject3, i1);
              new q((p)localObject2, (byte[])localObject3).j();
            }
          }
        }
        break;
      }
    }
  }
  
  public File a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    if (paramInt > 0)
    {
      p += paramInt;
      if (d != null) {
        d.a(p, o);
      }
    }
  }
  
  public void a(com.estrongs.io.a.b paramb)
  {
    t = paramb;
  }
  
  public void a(d paramd)
  {
    d = paramd;
  }
  
  public void a(g paramg, OutputStream paramOutputStream)
  {
    if ((!f.contains(paramg)) && (s.get(paramg.n()) == null)) {
      throw new RarException(RarException.RarExceptionType.headerNotInArchive);
    }
    try
    {
      b((g)s.get(paramg.n()), paramOutputStream);
      return;
    }
    catch (Exception paramOutputStream)
    {
      System.out.println("Failed to extract " + paramg.n() + " - " + paramOutputStream.getMessage());
      paramOutputStream.printStackTrace();
      if ((paramOutputStream instanceof RarException)) {
        throw ((RarException)paramOutputStream);
      }
      throw new RarException(paramOutputStream);
    }
  }
  
  void a(File paramFile)
  {
    b = paramFile;
    o = 0L;
    close();
    c = new de.innosystec.unrar.b.c(paramFile);
    if (r) {
      m();
    }
    try
    {
      l();
      paramFile = f.iterator();
      while (paramFile.hasNext())
      {
        de.innosystec.unrar.rarfile.b localb = (de.innosystec.unrar.rarfile.b)paramFile.next();
        if (localb.i() == UnrarHeadertype.FileHeader) {
          o += ((g)localb).s();
        }
      }
    }
    catch (RarException paramFile)
    {
      throw paramFile;
    }
    catch (Exception paramFile)
    {
      for (;;)
      {
        paramFile.printStackTrace();
        a.log(Level.WARNING, "exception in archive constructor maybe file is encrypted or currupt", paramFile);
      }
      if (d != null) {
        d.a(p, o);
      }
    }
  }
  
  public void a(String paramString)
  {
    q = paramString;
  }
  
  public de.innosystec.unrar.b.a b()
  {
    return c;
  }
  
  public g c()
  {
    int i1 = f.size();
    while (l < i1)
    {
      Object localObject = f;
      int i2 = l;
      l = (i2 + 1);
      localObject = (de.innosystec.unrar.rarfile.b)((List)localObject).get(i2);
      if (((de.innosystec.unrar.rarfile.b)localObject).i() == UnrarHeadertype.FileHeader) {
        return (g)localObject;
      }
    }
    return null;
  }
  
  public void close()
  {
    if (c != null)
    {
      c.close();
      c = null;
    }
  }
  
  public void d()
  {
    l = 0;
  }
  
  public d e()
  {
    return d;
  }
  
  public k f()
  {
    return h;
  }
  
  public boolean g()
  {
    return g.m();
  }
  
  public void h()
  {
    p = 0L;
  }
  
  public String i()
  {
    return q;
  }
  
  public boolean j()
  {
    return r;
  }
  
  public com.estrongs.io.a.b k()
  {
    return t;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */