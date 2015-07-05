package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.utils.d;

public class aa
{
  private byte[] a;
  private int b;
  
  public aa(aa paramaa, int paramInt)
  {
    a = a;
    b += paramInt;
  }
  
  public aa(byte[] paramArrayOfByte, int paramInt)
  {
    a = paramArrayOfByte;
    b = paramInt;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    d.a(a, b + paramInt1, paramInt2);
  }
  
  public final void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    System.arraycopy(a, b + paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  public final int d(int paramInt)
  {
    return d.a(a, b + paramInt);
  }
  
  public final int e(int paramInt)
  {
    return d.c(a, b + paramInt);
  }
  
  public final int f(int paramInt)
  {
    return d.e(a, b + paramInt);
  }
  
  public final long g(int paramInt)
  {
    return d.g(a, b + paramInt);
  }
  
  public final int h(int paramInt)
  {
    return (int)d.g(a, b + paramInt);
  }
  
  public final long i(int paramInt)
  {
    return d.i(a, b + paramInt);
  }
  
  public final int j(int paramInt)
  {
    return d.b(a, b + paramInt);
  }
  
  public final int k(int paramInt)
  {
    return d.d(a, b + paramInt);
  }
  
  public final int l(int paramInt)
  {
    return d.f(a, b + paramInt);
  }
  
  public final int m(int paramInt)
  {
    return d.h(a, b + paramInt);
  }
  
  public final long n(int paramInt)
  {
    return d.j(a, b + paramInt);
  }
  
  public final char o(int paramInt)
  {
    return (char)(a[(b + paramInt)] & 0xFF | (a[(b + paramInt + 1)] & 0xFF) << 8);
  }
  
  public byte[] s()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */