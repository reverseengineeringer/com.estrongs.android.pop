package com.baidu.mobstat;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class cs
{
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = cm.b(a(false, cn.a(), paramArrayOfByte));
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      cr.b(paramArrayOfByte);
    }
    return "";
  }
  
  private static RSAKey a(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    if (paramBoolean) {
      return (RSAPrivateKey)localKeyFactory.generatePrivate(new PKCS8EncodedKeySpec(paramArrayOfByte));
    }
    return (RSAPublicKey)localKeyFactory.generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
  }
  
  private static byte[] a(int paramInt1, Key paramKey, int paramInt2, byte[] paramArrayOfByte)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(paramInt1, paramKey);
    paramKey = new ByteArrayOutputStream();
    paramInt1 = 0;
    while (paramInt1 < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte.length - paramInt1;
      int i = j;
      if (j > paramInt2) {
        i = paramInt2;
      }
      paramKey.write(localCipher.doFinal(paramArrayOfByte, paramInt1, i));
      paramInt1 += paramInt2;
    }
    return paramKey.toByteArray();
  }
  
  public static byte[] a(boolean paramBoolean, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = a(paramBoolean, paramArrayOfByte1);
    int i = (paramArrayOfByte1.getModulus().bitLength() + 1) / 8;
    return a(1, (Key)paramArrayOfByte1, i - 11, paramArrayOfByte2);
  }
  
  public static byte[] b(boolean paramBoolean, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = a(paramBoolean, paramArrayOfByte1);
    int i = (paramArrayOfByte1.getModulus().bitLength() + 1) / 8;
    return a(2, (Key)paramArrayOfByte1, i, paramArrayOfByte2);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */