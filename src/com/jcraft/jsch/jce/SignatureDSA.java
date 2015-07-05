package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;

public class SignatureDSA
  implements com.jcraft.jsch.SignatureDSA
{
  Signature a;
  KeyFactory b;
  
  public void a()
  {
    a = Signature.getInstance("SHA1withDSA");
    b = KeyFactory.getInstance("DSA");
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a.update(paramArrayOfByte);
  }
  
  public void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    paramArrayOfByte1 = new DSAPublicKeySpec(new BigInteger(paramArrayOfByte1), new BigInteger(paramArrayOfByte2), new BigInteger(paramArrayOfByte3), new BigInteger(paramArrayOfByte4));
    paramArrayOfByte1 = b.generatePublic(paramArrayOfByte1);
    a.initVerify(paramArrayOfByte1);
  }
  
  public void b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    paramArrayOfByte1 = new DSAPrivateKeySpec(new BigInteger(paramArrayOfByte1), new BigInteger(paramArrayOfByte2), new BigInteger(paramArrayOfByte3), new BigInteger(paramArrayOfByte4));
    paramArrayOfByte1 = b.generatePrivate(paramArrayOfByte1);
    a.initSign(paramArrayOfByte1);
  }
  
  public boolean b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    int i;
    if (paramArrayOfByte[0] == 0)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte[1] == 0)
      {
        arrayOfByte = paramArrayOfByte;
        if (paramArrayOfByte[2] == 0)
        {
          i = (paramArrayOfByte[0] << 24 & 0xFF000000 | paramArrayOfByte[1] << 16 & 0xFF0000 | paramArrayOfByte[2] << 8 & 0xFF00 | paramArrayOfByte[3] & 0xFF) + 4;
          j = i + 1;
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
    if ((arrayOfByte[0] & 0x80) != 0)
    {
      i = 1;
      if ((arrayOfByte[20] & 0x80) == 0) {
        break label308;
      }
    }
    label308:
    for (int j = 1;; j = 0)
    {
      paramArrayOfByte = new byte[arrayOfByte.length + 6 + i + j];
      paramArrayOfByte[0] = 48;
      paramArrayOfByte[1] = 44;
      paramArrayOfByte[1] = ((byte)(paramArrayOfByte[1] + i));
      paramArrayOfByte[1] = ((byte)(paramArrayOfByte[1] + j));
      paramArrayOfByte[2] = 2;
      paramArrayOfByte[3] = 20;
      paramArrayOfByte[3] = ((byte)(paramArrayOfByte[3] + i));
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, i + 4, 20);
      paramArrayOfByte[(paramArrayOfByte[3] + 4)] = 2;
      paramArrayOfByte[(paramArrayOfByte[3] + 5)] = 20;
      i = paramArrayOfByte[3] + 5;
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] + j));
      System.arraycopy(arrayOfByte, 20, paramArrayOfByte, paramArrayOfByte[3] + 6 + j, 20);
      return a.verify(paramArrayOfByte);
      i = 0;
      break;
    }
  }
  
  public byte[] b()
  {
    int n = 1;
    int m = 20;
    byte[] arrayOfByte3 = a.sign();
    int i = arrayOfByte3[3] & 0xFF;
    byte[] arrayOfByte1 = new byte[i];
    System.arraycopy(arrayOfByte3, 4, arrayOfByte1, 0, arrayOfByte1.length);
    i = i + 4 + 1;
    byte[] arrayOfByte2 = new byte[arrayOfByte3[i] & 0xFF];
    System.arraycopy(arrayOfByte3, i + 1, arrayOfByte2, 0, arrayOfByte2.length);
    arrayOfByte3 = new byte[40];
    int j;
    if (arrayOfByte1.length > 20)
    {
      i = 1;
      if (arrayOfByte1.length <= 20) {
        break label172;
      }
      j = 0;
      label100:
      if (arrayOfByte1.length <= 20) {
        break label182;
      }
      k = 20;
      label111:
      System.arraycopy(arrayOfByte1, i, arrayOfByte3, j, k);
      if (arrayOfByte2.length <= 20) {
        break label189;
      }
      i = n;
      label132:
      if (arrayOfByte2.length <= 20) {
        break label194;
      }
      j = 20;
      label143:
      if (arrayOfByte2.length <= 20) {
        break label204;
      }
    }
    label172:
    label182:
    label189:
    label194:
    label204:
    for (int k = m;; k = arrayOfByte2.length)
    {
      System.arraycopy(arrayOfByte2, i, arrayOfByte3, j, k);
      return arrayOfByte3;
      i = 0;
      break;
      j = 20 - arrayOfByte1.length;
      break label100;
      k = arrayOfByte1.length;
      break label111;
      i = 0;
      break label132;
      j = 40 - arrayOfByte2.length;
      break label143;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.SignatureDSA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */