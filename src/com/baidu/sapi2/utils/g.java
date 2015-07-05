package com.baidu.sapi2.utils;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class g
{
  private static final String a = "UTF-8";
  private static final String b = "AES/CBC/NoPadding";
  private static final String c = "AES";
  private String d = "UTF-8";
  private String e = "AES/CBC/NoPadding";
  private String f = "AES";
  
  public g()
  {
    this("AES", "AES/CBC/NoPadding", "UTF-8");
  }
  
  public g(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, "UTF-8");
  }
  
  public g(String paramString1, String paramString2, String paramString3)
  {
    f = paramString1;
    e = paramString2;
    d = paramString3;
  }
  
  private static String a(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    while (i < 16 - j % 16)
    {
      paramString = paramString + ' ';
      i += 1;
    }
    return paramString;
  }
  
  public byte[] a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      throw new Exception("Empty string");
    }
    try
    {
      paramString2 = new IvParameterSpec(paramString2.getBytes(d));
      paramString3 = new SecretKeySpec(paramString3.getBytes(), f);
      Cipher localCipher = Cipher.getInstance(e);
      localCipher.init(1, paramString3, paramString2);
      paramString1 = localCipher.doFinal(a(paramString1).getBytes());
      return paramString1;
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      L.e(paramString1);
      return null;
    }
    catch (NoSuchPaddingException paramString1)
    {
      L.e(paramString1);
    }
    return null;
  }
  
  public byte[] a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new Exception("Empty string");
    }
    try
    {
      paramString1 = new IvParameterSpec(paramString1.getBytes(d));
      paramString2 = new SecretKeySpec(paramString2.getBytes(), f);
      Cipher localCipher = Cipher.getInstance(e);
      localCipher.init(2, paramString2, paramString1);
      paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      L.e(paramArrayOfByte);
    }
    return new byte[0];
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */