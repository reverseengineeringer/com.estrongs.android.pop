package com.jcraft.jsch.jce;

public class HMACSHA256
  extends HMAC
{
  public HMACSHA256()
  {
    a = "hmac-sha2-256";
    b = 32;
    c = "HmacSHA256";
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMACSHA256
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */