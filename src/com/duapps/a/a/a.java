package com.duapps.a.a;

import java.math.BigInteger;
import java.security.MessageDigest;

public class a
{
  public static String a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 36);
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = new BigInteger(localMessageDigest.digest()).abs().toString(paramInt);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.duapps.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */