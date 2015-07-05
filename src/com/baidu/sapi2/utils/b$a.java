package com.baidu.sapi2.utils;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class b$a
{
  private static final String a = "MD5";
  private static final String b = "AES";
  private static final String c = "UTF-8";
  private static final int d = 16;
  private static final int e = 16;
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = b(paramString.getBytes("UTF-8"));
      String str = a(b(paramString + "js52je)927!hsm^%3m"));
      paramString = a(paramString + "." + str, "js52je)927!hsm^%3m");
      return paramString;
    }
    catch (Exception paramString)
    {
      L.e(paramString);
    }
    return null;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      String str = a(b(paramString2.trim()));
      paramString2 = str.substring(0, 16);
      str = new StringBuffer(str.substring(0, 16)).reverse().toString();
      Cipher localCipher = Cipher.getInstance("AES/CBC/NoPadding");
      localCipher.init(1, new SecretKeySpec(paramString2.getBytes("UTF-8"), "AES"), new IvParameterSpec(str.getBytes("UTF-8")));
      paramString1 = b(localCipher.doFinal(c(paramString1.getBytes("UTF-8"))));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      L.e(paramString1);
    }
    return null;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(Integer.toString((paramArrayOfByte[i] & 0xFF) + 256, 16).substring(1));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String b(String paramString1, String paramString2)
  {
    try
    {
      String str = a(b(paramString2.trim()));
      paramString2 = str.substring(0, 16);
      str = new StringBuffer(str.substring(0, 16)).reverse().toString();
      Cipher localCipher = Cipher.getInstance("AES/CBC/NoPadding");
      localCipher.init(2, new SecretKeySpec(paramString2.getBytes("UTF-8"), "AES"), new IvParameterSpec(str.getBytes("UTF-8")));
      paramString1 = b(localCipher.doFinal(c(paramString1.getBytes("UTF-8"))));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      L.e(paramString1);
    }
    return null;
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    int i3 = paramArrayOfByte.length * 8;
    int i = 0;
    int m = 0;
    int i1 = 0;
    int n = 6;
    int k = 0;
    int j;
    if ((k > 0) && (n > 0))
    {
      i = (byte)((byte)((paramArrayOfByte[i1] & 0xFF) << n | (paramArrayOfByte[(i1 + 1)] & 0xFF) >> 8 - n) & 0x3F);
      k = 8 - n;
      j = 6 - k;
    }
    for (;;)
    {
      localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i));
      m += 6;
      i1 = m / 8;
      int i4 = i3 - m;
      n = j;
      if (i4 >= 6) {
        break;
      }
      if (i4 > 0) {
        localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((byte)(paramArrayOfByte[(paramArrayOfByte.length - 1)] << 6 - i4 & 0x3F)));
      }
      i = i2;
      while (i < i3 % 3)
      {
        localStringBuilder.append("=");
        i += 1;
      }
      if (k == 0)
      {
        i = (byte)((paramArrayOfByte[i1] & 0xFF) >> 8 - n);
        k = 2;
        j = 4;
      }
      else
      {
        j = n;
        if (n == 0)
        {
          i = (byte)(paramArrayOfByte[i1] & 0x3F);
          j = 6;
          k = 0;
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  private static byte[] b(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      L.e(paramString);
    }
    return null;
  }
  
  private static byte[] c(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length % 16 != 0)
    {
      arrayOfByte = new byte[(paramArrayOfByte.length / 16 + 1) * 16];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      int i = paramArrayOfByte.length;
      while (i < arrayOfByte.length)
      {
        arrayOfByte[i] = 0;
        i += 1;
      }
    }
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */