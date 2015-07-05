package com.baidu.android.common.security;

import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;

public final class RSAUtil
{
  public static final String ALGORITHM_RSA = "RSA";
  public static final int BYTE_IN_BITS = 8;
  public static final String PRIVATE_KEY = "PrivateKey";
  public static final int PT_MAXLEN_OFFSET = 11;
  public static final String PUBLIC_KEY = "PublicKey";
  
  public static byte[] decryptByPrivateKey(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new PKCS8EncodedKeySpec(Base64.decode(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePrivate(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] decryptByPublicKey(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] decryptLongByPrivateKey(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    paramString = new PKCS8EncodedKeySpec(Base64.decode(paramString.getBytes()));
    Object localObject = KeyFactory.getInstance("RSA").generatePrivate(paramString);
    paramString = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    paramString.init(2, (Key)localObject);
    int j = paramInt / 8;
    localObject = new StringBuilder();
    int m = paramArrayOfByte.length;
    int i;
    for (paramInt = 0; paramInt < m; paramInt = i + paramInt)
    {
      int k = m - paramInt;
      i = k;
      if (j < k) {
        i = j;
      }
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte, 0, i);
      ((StringBuilder)localObject).append(new String(paramString.doFinal(arrayOfByte)));
    }
    return ((StringBuilder)localObject).toString().getBytes();
  }
  
  public static byte[] encryptByPrivateKey(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new PKCS8EncodedKeySpec(Base64.decode(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePrivate(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encryptByPublicKey(byte[] paramArrayOfByte, String paramString)
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encryptLongByPublicKey(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString.getBytes()));
    Object localObject = KeyFactory.getInstance("RSA").generatePublic(paramString);
    paramString = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    paramString.init(1, (Key)localObject);
    int n = paramInt / 8;
    int k = n - 11;
    int i1 = paramArrayOfByte.length;
    localObject = new byte[(i1 + k - 1) / k * n];
    paramInt = 0;
    int i = 0;
    while (i < i1)
    {
      int m = i1 - i;
      int j = m;
      if (k < m) {
        j = k;
      }
      byte[] arrayOfByte = new byte[j];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
      i += j;
      System.arraycopy(paramString.doFinal(arrayOfByte), 0, localObject, paramInt, n);
      paramInt += n;
    }
    return (byte[])localObject;
  }
  
  public static Map<String, Object> generateKey(int paramInt)
  {
    Object localObject1 = KeyPairGenerator.getInstance("RSA");
    ((KeyPairGenerator)localObject1).initialize(paramInt);
    Object localObject2 = ((KeyPairGenerator)localObject1).generateKeyPair();
    localObject1 = (RSAPublicKey)((KeyPair)localObject2).getPublic();
    localObject2 = (RSAPrivateKey)((KeyPair)localObject2).getPrivate();
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("PublicKey", localObject1);
    localHashMap.put("PrivateKey", localObject2);
    return localHashMap;
  }
  
  /* Error */
  public static RSAPrivateKey generateRSAPrivateKey(java.math.BigInteger paramBigInteger1, java.math.BigInteger paramBigInteger2)
  {
    // Byte code:
    //   0: ldc 8
    //   2: invokestatic 49	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   5: astore_2
    //   6: new 147	java/security/spec/RSAPrivateKeySpec
    //   9: dup
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial 150	java/security/spec/RSAPrivateKeySpec:<init>	(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    //   15: astore_0
    //   16: aload_2
    //   17: aload_0
    //   18: invokevirtual 53	java/security/KeyFactory:generatePrivate	(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    //   21: checkcast 127	java/security/interfaces/RSAPrivateKey
    //   24: astore_0
    //   25: aload_0
    //   26: areturn
    //   27: astore_0
    //   28: new 152	java/lang/Exception
    //   31: dup
    //   32: aload_0
    //   33: invokevirtual 155	java/security/NoSuchAlgorithmException:getMessage	()Ljava/lang/String;
    //   36: invokespecial 158	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   39: athrow
    //   40: astore_0
    //   41: new 152	java/lang/Exception
    //   44: dup
    //   45: aload_0
    //   46: invokevirtual 159	java/security/spec/InvalidKeySpecException:getMessage	()Ljava/lang/String;
    //   49: invokespecial 158	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paramBigInteger1	java.math.BigInteger
    //   0	53	1	paramBigInteger2	java.math.BigInteger
    //   5	12	2	localKeyFactory	KeyFactory
    // Exception table:
    //   from	to	target	type
    //   0	6	27	java/security/NoSuchAlgorithmException
    //   16	25	40	java/security/spec/InvalidKeySpecException
  }
  
  /* Error */
  public static RSAPublicKey generateRSAPublicKey(java.math.BigInteger paramBigInteger1, java.math.BigInteger paramBigInteger2)
  {
    // Byte code:
    //   0: ldc 8
    //   2: invokestatic 49	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   5: astore_2
    //   6: new 163	java/security/spec/RSAPublicKeySpec
    //   9: dup
    //   10: aload_0
    //   11: aload_1
    //   12: invokespecial 164	java/security/spec/RSAPublicKeySpec:<init>	(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    //   15: astore_0
    //   16: aload_2
    //   17: aload_0
    //   18: invokevirtual 75	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   21: checkcast 121	java/security/interfaces/RSAPublicKey
    //   24: astore_0
    //   25: aload_0
    //   26: areturn
    //   27: astore_0
    //   28: new 152	java/lang/Exception
    //   31: dup
    //   32: aload_0
    //   33: invokevirtual 155	java/security/NoSuchAlgorithmException:getMessage	()Ljava/lang/String;
    //   36: invokespecial 158	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   39: athrow
    //   40: astore_0
    //   41: new 152	java/lang/Exception
    //   44: dup
    //   45: aload_0
    //   46: invokevirtual 159	java/security/spec/InvalidKeySpecException:getMessage	()Ljava/lang/String;
    //   49: invokespecial 158	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paramBigInteger1	java.math.BigInteger
    //   0	53	1	paramBigInteger2	java.math.BigInteger
    //   5	12	2	localKeyFactory	KeyFactory
    // Exception table:
    //   from	to	target	type
    //   0	6	27	java/security/NoSuchAlgorithmException
    //   16	25	40	java/security/spec/InvalidKeySpecException
  }
  
  public static String getPrivateKey(Map<String, Object> paramMap)
  {
    return Base64.encode(((Key)paramMap.get("PrivateKey")).getEncoded(), "utf-8");
  }
  
  public static String getPublicKey(Map<String, Object> paramMap)
  {
    return Base64.encode(((Key)paramMap.get("PublicKey")).getEncoded(), "utf-8");
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.security.RSAUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */