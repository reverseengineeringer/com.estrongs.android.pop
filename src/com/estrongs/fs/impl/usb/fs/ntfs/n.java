package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.a.a;
import com.estrongs.fs.impl.usb.fs.ntfs.a.h;
import com.estrongs.fs.impl.usb.fs.ntfs.a.i;
import com.estrongs.fs.impl.usb.fs.ntfs.a.j;
import com.estrongs.fs.impl.usb.fs.ntfs.utils.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class n
  extends z
{
  private static final String c = n.class.getSimpleName();
  protected a a;
  protected List<h> b;
  private boolean d = false;
  private long e;
  private StandardInformationAttribute f;
  private m g;
  
  public n(ab paramab, long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    super(paramab, paramArrayOfByte, paramInt);
    e = paramLong;
    a = ((a)a(32));
  }
  
  private List<h> n()
  {
    for (;;)
    {
      try
      {
        if (b == null)
        {
          b = new ArrayList();
          try
          {
            if (a != null) {
              continue;
            }
            if (d) {
              l.b(c, "All attributes stored");
            }
            q localq = l();
            h localh = localq.a();
            if (localh != null)
            {
              b.add(localh);
              continue;
            }
            localObject1 = b;
          }
          catch (Exception localException)
          {
            l.c(c, "Error getting attributes for entry: " + this, localException);
          }
        }
        return (List<h>)localObject1;
      }
      finally {}
      if (d) {
        l.b(c, "Attributes in attribute list");
      }
      Object localObject1 = new r(this, null);
    }
  }
  
  private h p(int paramInt)
  {
    q localq = l();
    h localh;
    do
    {
      localh = localq.a();
      if (localh == null) {
        break;
      }
    } while (localh.h() != paramInt);
    return localh;
    return null;
  }
  
  public h a(int paramInt)
  {
    q localq = l();
    h localh;
    do
    {
      localh = localq.a();
      if (localh == null) {
        break;
      }
    } while (localh.e() != paramInt);
    return localh;
    return null;
  }
  
  public q a(int paramInt, String paramString)
  {
    if (d) {
      l.b(c, "findAttributesByTypeAndName(0x" + e.a(paramInt, 4) + "," + paramString + ")");
    }
    return new p(this, n().iterator(), paramInt, paramString);
  }
  
  public void a()
  {
    if (o() != 1162627398)
    {
      if (d) {
        l.b(c, "Invalid magic number found for FILE record: " + o() + " -- dumping buffer");
      }
      int i = 0;
      while (i < s().length)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        int j = i;
        while ((j < i + 32) && (j < s().length))
        {
          for (String str = Integer.toHexString(s()[j]); str.length() < 2; str = '0' + str) {}
          localStringBuilder.append(' ').append(str);
          j += 1;
        }
        if (d) {
          l.b(c, localStringBuilder.toString());
        }
        i += 32;
      }
      throw new IOException("Invalid magic found: " + o());
    }
    long l = h();
    if ((l >= 0L) && (e != l)) {
      throw new IOException("Stored reference number " + h() + " does not match reference number " + e);
    }
  }
  
  public void a(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a(null, paramLong, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void a(String paramString, long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (d) {
      l.b(c, "readData: offset " + paramLong + " stream: " + paramString + " length " + paramInt2 + ", file record = " + this);
    }
    if (paramInt2 == 0) {}
    q localq;
    do
    {
      return;
      localq = a(128, paramString);
      paramString = localq.a();
      if (paramString == null) {
        throw new IOException("Data attribute not found, file record = " + this);
      }
      if (!paramString.k()) {
        break;
      }
      if (localq.a() != null) {
        throw new IOException("Resident attribute should be by itself, file record = " + this);
      }
      paramString = (j)paramString;
      i = paramString.m();
      if (i < paramInt2) {
        throw new IOException("File data(" + i + "b) is not large enough to read:" + paramInt2 + "b");
      }
      paramString.a(paramString.l() + (int)paramLong, paramArrayOfByte, paramInt1, paramInt2);
    } while (!d);
    l.b(c, "readData: read from resident data");
    return;
    int k = r().b();
    long l = paramLong / k;
    int m = (int)((paramInt2 + paramLong - 1L) / k - l + 1L);
    byte[] arrayOfByte = new byte[m * k];
    int i = 0;
    if (paramString.k()) {
      throw new IOException("Resident attribute should be by itself, file record = " + this);
    }
    paramString = (i)paramString;
    int j = i + paramString.a(l, arrayOfByte, 0, m);
    if (j == m) {}
    for (;;)
    {
      if (d) {
        l.b(c, "readData: read " + j + " from non-resident attributes");
      }
      if (j == m) {
        break label492;
      }
      throw new IOException("Requested " + m + " clusters but only read " + j + ", offset = " + paramInt1 + ", file record = " + this);
      l -= paramString.p();
      h localh = localq.a();
      i = j;
      paramString = localh;
      if (localh != null) {
        break;
      }
    }
    label492:
    System.arraycopy(arrayOfByte, (int)paramLong % k, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long b(int paramInt, String paramString)
  {
    q localq = a(paramInt, paramString);
    h localh = localq.a();
    if (localh == null) {
      throw new IllegalStateException("Failed to find an attribute with type: " + paramInt + " and name: '" + paramString + "'");
    }
    paramString = localh;
    long l = 0L;
    if (paramString != null)
    {
      if (paramString.k()) {}
      for (l = ((j)paramString).m() + l;; l = ((i)paramString).n() + l)
      {
        paramString = localq.a();
        break;
      }
    }
    return l;
  }
  
  public h b(int paramInt)
  {
    if (d) {
      l.b(c, "findAttributeByType(0x" + e.a(paramInt, 4) + ")");
    }
    Iterator localIterator = n().iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (localh.e() == paramInt)
      {
        if (d) {
          l.b(c, "findAttributeByType(0x" + e.a(paramInt, 4) + ") found");
        }
        return localh;
      }
    }
    if (d) {
      l.b(c, "findAttributeByType(0x" + e.a(paramInt, 4) + ") not found");
    }
    return null;
  }
  
  public boolean b()
  {
    return (e() & 0x1) != 0;
  }
  
  public q c(int paramInt)
  {
    if (d) {
      l.b(c, "findAttributesByType(0x" + e.a(paramInt, 4) + ")");
    }
    return new o(this, n().iterator(), paramInt);
  }
  
  public boolean c()
  {
    return (e() & 0x2) != 0;
  }
  
  public int d()
  {
    return e(20);
  }
  
  public int e()
  {
    return e(22);
  }
  
  public long f()
  {
    return e;
  }
  
  public int g()
  {
    return e(4);
  }
  
  public long h()
  {
    if (g() >= 48) {
      return g(44);
    }
    return -1L;
  }
  
  public String i()
  {
    m localm = k();
    if (localm != null) {
      return localm.a();
    }
    return null;
  }
  
  public StandardInformationAttribute j()
  {
    if (f == null) {
      f = ((StandardInformationAttribute)b(16));
    }
    return f;
  }
  
  public m k()
  {
    if (g == null)
    {
      q localq = c(48);
      for (h localh = localq.a(); localh != null; localh = localq.a()) {
        if ((g == null) || (g.d() != 1)) {
          g = ((m)localh);
        }
      }
    }
    return g;
  }
  
  public q l()
  {
    return new t(this, null);
  }
  
  public String toString()
  {
    if (b()) {
      return super.toString() + "[fileName=" + i() + "]";
    }
    return super.toString() + "[unused]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */