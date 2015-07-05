package com.jcraft.jsch.jce;

public class HMACMD596
  extends HMACMD5
{
  private final byte[] d = new byte[16];
  
  public HMACMD596()
  {
    a = "hmac-md5-96";
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
 * Qualified Name:     com.jcraft.jsch.jce.HMACMD596
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */