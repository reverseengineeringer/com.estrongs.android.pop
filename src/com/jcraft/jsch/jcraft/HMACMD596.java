package com.jcraft.jsch.jcraft;

public class HMACMD596
  extends HMACMD5
{
  private final byte[] a = new byte[16];
  
  public int a()
  {
    return 12;
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    super.a(a, 0);
    System.arraycopy(a, 0, paramArrayOfByte, paramInt, 12);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jcraft.HMACMD596
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */