package com.baidu.mobstat;

import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class cp
{
  public static String a(File paramFile)
  {
    try
    {
      paramFile = co.a(MessageDigest.getInstance("SHA-256"), paramFile);
      return paramFile;
    }
    catch (NoSuchAlgorithmException paramFile)
    {
      paramFile.printStackTrace();
    }
    return "";
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = co.a(MessageDigest.getInstance("SHA-256"), paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      cr.b(paramArrayOfByte);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */