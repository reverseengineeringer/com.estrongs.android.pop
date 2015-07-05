package com.a.a;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class d
{
  public static final int[] a = { 0, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20 };
  public static byte[] b = new byte[a.length];
  private KeyPair c;
  private a d;
  
  static
  {
    int i = 0;
    while (i < b.length)
    {
      b[i] = ((byte)a[i]);
      i += 1;
    }
  }
  
  public static d a(a parama)
  {
    d locald = new d();
    KeyPairGenerator localKeyPairGenerator = KeyPairGenerator.getInstance("RSA");
    localKeyPairGenerator.initialize(2048);
    c = localKeyPairGenerator.genKeyPair();
    d = parama;
    return locald;
  }
  
  public static d a(a parama, File paramFile1, File paramFile2)
  {
    d locald = new d();
    int i = (int)paramFile1.length();
    int j = (int)paramFile2.length();
    byte[] arrayOfByte2 = new byte[i];
    byte[] arrayOfByte1 = new byte[j];
    paramFile1 = new FileInputStream(paramFile1);
    paramFile2 = new FileInputStream(paramFile2);
    paramFile1.read(arrayOfByte2);
    paramFile2.read(arrayOfByte1);
    paramFile1.close();
    paramFile2.close();
    paramFile1 = KeyFactory.getInstance("RSA");
    paramFile2 = new PKCS8EncodedKeySpec(arrayOfByte2);
    c = new KeyPair(paramFile1.generatePublic(new X509EncodedKeySpec(arrayOfByte1)), paramFile1.generatePrivate(paramFile2));
    d = parama;
    return locald;
  }
  
  private static byte[] a(RSAPublicKey paramRSAPublicKey)
  {
    int j = 0;
    BigInteger localBigInteger2 = BigInteger.ZERO.setBit(32);
    Object localObject2 = paramRSAPublicKey.getModulus();
    Object localObject1 = BigInteger.ZERO.setBit(2048).modPow(BigInteger.valueOf(2L), (BigInteger)localObject2);
    BigInteger localBigInteger1 = ((BigInteger)localObject2).remainder(localBigInteger2).modInverse(localBigInteger2);
    int[] arrayOfInt1 = new int[64];
    int[] arrayOfInt2 = new int[64];
    int i = 0;
    Object localObject3 = localObject1;
    localObject1 = localObject2;
    while (i < 64)
    {
      localObject2 = ((BigInteger)localObject3).divideAndRemainder(localBigInteger2);
      localObject3 = localObject2[0];
      arrayOfInt2[i] = localObject2[1].intValue();
      localObject2 = ((BigInteger)localObject1).divideAndRemainder(localBigInteger2);
      localObject1 = localObject2[0];
      arrayOfInt1[i] = localObject2[1].intValue();
      i += 1;
    }
    localObject1 = ByteBuffer.allocate(524).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject1).putInt(64);
    ((ByteBuffer)localObject1).putInt(localBigInteger1.negate().intValue());
    int k = arrayOfInt1.length;
    i = 0;
    while (i < k)
    {
      ((ByteBuffer)localObject1).putInt(arrayOfInt1[i]);
      i += 1;
    }
    k = arrayOfInt2.length;
    i = j;
    while (i < k)
    {
      ((ByteBuffer)localObject1).putInt(arrayOfInt2[i]);
      i += 1;
    }
    ((ByteBuffer)localObject1).putInt(paramRSAPublicKey.getPublicExponent().intValue());
    return ((ByteBuffer)localObject1).array();
  }
  
  public void a(File paramFile1, File paramFile2)
  {
    paramFile1 = new FileOutputStream(paramFile1);
    paramFile2 = new FileOutputStream(paramFile2);
    paramFile1.write(c.getPrivate().getEncoded());
    paramFile2.write(c.getPublic().getEncoded());
    paramFile1.close();
    paramFile2.close();
  }
  
  public byte[] a()
  {
    byte[] arrayOfByte = a((RSAPublicKey)c.getPublic());
    StringBuilder localStringBuilder = new StringBuilder(720);
    localStringBuilder.append(d.a(arrayOfByte));
    localStringBuilder.append(" unknown@unknown");
    localStringBuilder.append('\000');
    return localStringBuilder.toString().getBytes("UTF-8");
  }
  
  public byte[] a(byte[] paramArrayOfByte)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/NoPadding");
    localCipher.init(1, c.getPrivate());
    localCipher.update(b);
    return localCipher.doFinal(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */