package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.fs.impl.usb.fs.ntfs.aa;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.io.UnsupportedEncodingException;

public final class c
  extends aa
{
  private final n a;
  
  public c(n paramn, aa paramaa, int paramInt)
  {
    super(paramaa, paramInt);
    a = paramn;
  }
  
  private byte[] m()
  {
    byte[] arrayOfByte = new byte[d(80) * 2];
    a(82, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public boolean a()
  {
    return (c() & 0x1) != 0;
  }
  
  public int b()
  {
    return e(8);
  }
  
  public int c()
  {
    return d(12);
  }
  
  public boolean d()
  {
    return (c() & 0x2) != 0;
  }
  
  public int e()
  {
    return d(81);
  }
  
  public boolean f()
  {
    return (i() & 0x10000000) != 0L;
  }
  
  public String g()
  {
    try
    {
      String str = new String(m(), "UTF-16LE");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("UTF-16LE charset missing from JRE", localUnsupportedEncodingException);
    }
  }
  
  public long h()
  {
    return i(0);
  }
  
  public long i()
  {
    return n(72);
  }
  
  public long j()
  {
    return n(64);
  }
  
  public n k()
  {
    return a;
  }
  
  public long l()
  {
    return n(b() - 8);
  }
  
  public String toString()
  {
    return super.toString() + "[fileName=" + g() + ",indexFlags=" + c() + ",fileFlags=" + i() + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */