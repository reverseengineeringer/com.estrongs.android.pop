package com.flurry.sdk;

import java.util.UUID;

public class ku
{
  private static final String b = ku.class.getSimpleName();
  String a = null;
  private byte[] c = null;
  
  private ku() {}
  
  public ku(byte[] paramArrayOfByte)
  {
    a = UUID.randomUUID().toString();
    c = paramArrayOfByte;
  }
  
  public static String a(String paramString)
  {
    return ".yflurrydatasenderblock." + paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  public byte[] b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */