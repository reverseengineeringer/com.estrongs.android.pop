package com.estrongs.fs.impl.usb.fs.ntfs;

import java.util.Arrays;

class d
{
  private final byte[] a;
  private int b;
  
  private d(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  private byte a(int paramInt)
  {
    return a[(b + paramInt)];
  }
  
  private void a(int paramInt, byte paramByte)
  {
    a[(b + paramInt)] = paramByte;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Arrays.fill(a, b + paramInt1, b + paramInt1 + paramInt2, (byte)0);
  }
  
  private void a(d paramd, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = b + paramInt1;
    paramInt2 = b + paramInt2;
    paramd = a;
    byte[] arrayOfByte = a;
    if ((paramd == arrayOfByte) && (((i < paramInt2) && (i + paramInt3 > paramInt2)) || ((paramInt2 < i) && (paramInt2 + paramInt3 > i)))) {
      paramInt1 = 0;
    }
    while (paramInt1 < paramInt3)
    {
      arrayOfByte[(paramInt2 + paramInt1)] = paramd[(i + paramInt1)];
      paramInt1 += 1;
      continue;
      System.arraycopy(paramd, i, arrayOfByte, paramInt2, paramInt3);
    }
  }
  
  private int b(int paramInt)
  {
    return com.estrongs.fs.impl.usb.fs.ntfs.utils.d.c(a, b + paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */