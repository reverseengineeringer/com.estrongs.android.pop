package com.jcraft.jsch.jce;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public class PBKDF
  implements com.jcraft.jsch.PBKDF
{
  public byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramArrayOfByte1.length];
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte1.length) {}
      try
      {
        paramArrayOfByte1 = new PBEKeySpec(arrayOfChar, paramArrayOfByte2, paramInt1, paramInt2 * 8);
        paramArrayOfByte1 = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(paramArrayOfByte1).getEncoded();
        return paramArrayOfByte1;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte1)
      {
        return null;
      }
      catch (InvalidKeySpecException paramArrayOfByte1)
      {
        for (;;) {}
      }
      arrayOfChar[i] = ((char)(paramArrayOfByte1[i] & 0xFF));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.PBKDF
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */