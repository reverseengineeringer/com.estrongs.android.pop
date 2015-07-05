package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;

public class SignatureRSA
  implements com.jcraft.jsch.SignatureRSA
{
  Signature a;
  KeyFactory b;
  
  public void a()
  {
    a = Signature.getInstance("SHA1withRSA");
    b = KeyFactory.getInstance("RSA");
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a.update(paramArrayOfByte);
  }
  
  public void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = new RSAPublicKeySpec(new BigInteger(paramArrayOfByte2), new BigInteger(paramArrayOfByte1));
    paramArrayOfByte1 = b.generatePublic(paramArrayOfByte1);
    a.initVerify(paramArrayOfByte1);
  }
  
  public void b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = new RSAPrivateKeySpec(new BigInteger(paramArrayOfByte2), new BigInteger(paramArrayOfByte1));
    paramArrayOfByte1 = b.generatePrivate(paramArrayOfByte1);
    a.initSign(paramArrayOfByte1);
  }
  
  public boolean b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte[0] == 0)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte[1] == 0)
      {
        arrayOfByte = paramArrayOfByte;
        if (paramArrayOfByte[2] == 0)
        {
          int i = (paramArrayOfByte[0] << 24 & 0xFF000000 | paramArrayOfByte[1] << 16 & 0xFF0000 | paramArrayOfByte[2] << 8 & 0xFF00 | paramArrayOfByte[3] & 0xFF) + 4;
          int j = i + 1;
          i = paramArrayOfByte[i];
          int k = j + 1;
          int m = paramArrayOfByte[j];
          j = k + 1;
          k = paramArrayOfByte[k];
          i = paramArrayOfByte[j] & 0xFF | i << 24 & 0xFF000000 | m << 16 & 0xFF0000 | k << 8 & 0xFF00;
          arrayOfByte = new byte[i];
          System.arraycopy(paramArrayOfByte, j + 1, arrayOfByte, 0, i);
        }
      }
    }
    return a.verify(arrayOfByte);
  }
  
  public byte[] b()
  {
    return a.sign();
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.SignatureRSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */