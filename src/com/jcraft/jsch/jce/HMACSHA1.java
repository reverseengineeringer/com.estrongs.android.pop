package com.jcraft.jsch.jce;

public class HMACSHA1
  extends HMAC
{
  public HMACSHA1()
  {
    a = "hmac-sha1";
    b = 20;
    c = "HmacSHA1";
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMACSHA1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */