package com.c.a.a;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class a
{
  private MessageDigest a;
  
  a()
  {
    try
    {
      a = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException.getMessage());
    }
  }
  
  void a(byte[] paramArrayOfByte)
  {
    a.update(paramArrayOfByte);
  }
  
  byte[] a()
  {
    return a.digest();
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */