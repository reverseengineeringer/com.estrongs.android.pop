package com.jcraft.jsch.jce;

public class HMACSHA196
  extends HMACSHA1
{
  private final byte[] d = new byte[20];
  
  public HMACSHA196()
  {
    a = "hmac-sha1-96";
  }
  
  public int a()
  {
    return 12;
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    super.a(d, 0);
    System.arraycopy(d, 0, paramArrayOfByte, paramInt, 12);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMACSHA196
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */