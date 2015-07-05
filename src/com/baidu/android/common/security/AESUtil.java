package com.baidu.android.common.security;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class AESUtil
{
  private static final String ALGORITHM_NAME = "AES";
  private static final String TRANSFORMATION = "AES/CBC/PKCS5Padding";
  
  public static byte[] decrypt(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    paramString2 = new SecretKeySpec(paramString2.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, paramString2, new IvParameterSpec(paramString1.getBytes()));
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encrypt(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    paramString2 = new SecretKeySpec(paramString2.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(1, paramString2, new IvParameterSpec(paramString1.getBytes()));
    return localCipher.doFinal(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.security.AESUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */