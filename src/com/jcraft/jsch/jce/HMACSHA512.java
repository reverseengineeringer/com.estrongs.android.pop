package com.jcraft.jsch.jce;

public class HMACSHA512
  extends HMAC
{
  public HMACSHA512()
  {
    a = "hmac-sha2-512";
    b = 64;
    c = "HmacSHA512";
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMACSHA512
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */