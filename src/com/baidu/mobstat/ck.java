package com.baidu.mobstat;

import android.text.TextUtils;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class ck
{
  public static byte[] a(int paramInt, byte[] paramArrayOfByte)
  {
    paramInt -= 1;
    if ((paramInt >= 0) && (cn.a.length > paramInt))
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(cn.a[paramInt].getBytes(), "AES");
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(1, localSecretKeySpec);
      return localCipher.doFinal(paramArrayOfByte);
    }
    return new byte[0];
  }
  
  public static byte[] b(int paramInt, byte[] paramArrayOfByte)
  {
    paramInt -= 1;
    if ((paramInt >= 0) && (cn.a.length > paramInt))
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(cn.a[paramInt].getBytes(), "AES");
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(2, localSecretKeySpec);
      return localCipher.doFinal(paramArrayOfByte);
    }
    return new byte[0];
  }
  
  public static String c(int paramInt, byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = cm.b(a(paramInt, paramArrayOfByte));
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      cr.a(paramArrayOfByte);
    }
    return "";
  }
  
  public static String d(int paramInt, byte[] paramArrayOfByte)
  {
    paramArrayOfByte = c(paramInt, paramArrayOfByte);
    if (TextUtils.isEmpty(paramArrayOfByte)) {
      return "";
    }
    return paramArrayOfByte + "|" + paramInt;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */