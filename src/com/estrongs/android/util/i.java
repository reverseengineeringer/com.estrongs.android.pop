package com.estrongs.android.util;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class i
{
  private static String a = "estrongs";
  private Cipher b = null;
  private Cipher c = null;
  
  public i()
  {
    this(a);
  }
  
  public i(String paramString)
  {
    paramString = d(paramString.getBytes());
    b = Cipher.getInstance("DES/ECB/PKCS5Padding");
    b.init(1, paramString);
    c = Cipher.getInstance("DES");
    c.init(2, paramString);
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer(k * 2);
    int i = 0;
    while (i < k)
    {
      int j = paramArrayOfByte[i];
      while (j < 0) {
        j += 256;
      }
      if (j < 16) {
        localStringBuffer.append("0");
      }
      localStringBuffer.append(Integer.toString(j, 16));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static byte[] a(String paramString)
  {
    paramString = paramString.getBytes();
    int j = paramString.length;
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      String str = new String(paramString, i, 2);
      arrayOfByte[(i / 2)] = ((byte)Integer.parseInt(str, 16));
      i += 2;
    }
    return arrayOfByte;
  }
  
  private Key d(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    while ((i < paramArrayOfByte.length) && (i < arrayOfByte.length))
    {
      arrayOfByte[i] = paramArrayOfByte[i];
      i += 1;
    }
    return new SecretKeySpec(arrayOfByte, "DES");
  }
  
  public String b(String paramString)
  {
    return a(b(paramString.getBytes()));
  }
  
  public byte[] b(byte[] paramArrayOfByte)
  {
    return b.doFinal(paramArrayOfByte);
  }
  
  public String c(String paramString)
  {
    return new String(c(a(paramString)));
  }
  
  public byte[] c(byte[] paramArrayOfByte)
  {
    return c.doFinal(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */