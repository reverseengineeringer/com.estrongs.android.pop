package com.jcraft.jsch.jcraft;

import java.security.MessageDigest;

class HMAC
{
  private byte[] a = null;
  private byte[] b = null;
  private MessageDigest c = null;
  private int d = 0;
  private final byte[] e = new byte[4];
  
  public int a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    e[0] = ((byte)(paramInt >>> 24));
    e[1] = ((byte)(paramInt >>> 16));
    e[2] = ((byte)(paramInt >>> 8));
    e[3] = ((byte)paramInt);
    a(e, 0, 4);
  }
  
  protected void a(MessageDigest paramMessageDigest)
  {
    c = paramMessageDigest;
    d = paramMessageDigest.getDigestLength();
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    c.reset();
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length > d)
    {
      arrayOfByte = new byte[d];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, d);
    }
    paramArrayOfByte = arrayOfByte;
    if (arrayOfByte.length > 64)
    {
      c.update(arrayOfByte, 0, arrayOfByte.length);
      paramArrayOfByte = c.digest();
    }
    a = new byte[64];
    System.arraycopy(paramArrayOfByte, 0, a, 0, paramArrayOfByte.length);
    b = new byte[64];
    System.arraycopy(paramArrayOfByte, 0, b, 0, paramArrayOfByte.length);
    int i = 0;
    for (;;)
    {
      if (i >= 64)
      {
        c.update(a, 0, 64);
        return;
      }
      paramArrayOfByte = a;
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ 0x36));
      paramArrayOfByte = b;
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ 0x5C));
      i += 1;
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = c.digest();
    c.update(b, 0, 64);
    c.update(arrayOfByte, 0, d);
    try
    {
      c.digest(paramArrayOfByte, paramInt, d);
      c.update(a, 0, 64);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      for (;;) {}
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jcraft.HMAC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */