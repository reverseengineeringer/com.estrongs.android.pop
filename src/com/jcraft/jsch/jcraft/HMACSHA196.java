package com.jcraft.jsch.jcraft;

public class HMACSHA196
  extends HMACSHA1
{
  private final byte[] a = new byte[20];
  
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
 * Qualified Name:     com.jcraft.jsch.jcraft.HMACSHA196
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */