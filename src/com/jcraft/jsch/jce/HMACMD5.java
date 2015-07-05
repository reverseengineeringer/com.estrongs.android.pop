package com.jcraft.jsch.jce;

public class HMACMD5
  extends HMAC
{
  public HMACMD5()
  {
    a = "hmac-md5";
    b = 16;
    c = "HmacMD5";
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMACMD5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */