package com.jcraft.jsch.jce;

import java.security.SecureRandom;

public class Random
  implements com.jcraft.jsch.Random
{
  private byte[] a = new byte[16];
  private SecureRandom b = null;
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > a.length) {
      a = new byte[paramInt2];
    }
    b.nextBytes(a);
    System.arraycopy(a, 0, paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.Random
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */