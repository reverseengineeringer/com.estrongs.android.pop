package com.baidu.mobstat.util;

import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  public static String a(String paramString)
  {
    Object localObject = new File(paramString);
    if (!((File)localObject).isFile()) {
      return null;
    }
    paramString = new byte['Ѐ'];
    MessageDigest localMessageDigest;
    try
    {
      localMessageDigest = MessageDigest.getInstance("MD5");
      localObject = new FileInputStream((File)localObject);
      for (;;)
      {
        int i = ((FileInputStream)localObject).read(paramString, 0, 1024);
        if (i == -1) {
          break;
        }
        localMessageDigest.update(paramString, 0, i);
      }
      ((FileInputStream)localObject).close();
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    return new BigInteger(1, localMessageDigest.digest()).toString(16);
  }
  
  public static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    paramString = new SecretKeySpec(paramString.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(1, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] b(String paramString, byte[] paramArrayOfByte)
  {
    paramString = new SecretKeySpec(paramString.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */