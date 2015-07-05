package com.jcraft.jsch.jce;

import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AES256CTR
  implements com.jcraft.jsch.Cipher
{
  private javax.crypto.Cipher a;
  
  public int a()
  {
    return 16;
  }
  
  public void a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = paramArrayOfByte2;
    if (paramArrayOfByte2.length > 16)
    {
      arrayOfByte = new byte[16];
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, 0, arrayOfByte.length);
    }
    paramArrayOfByte2 = paramArrayOfByte1;
    if (paramArrayOfByte1.length > 32)
    {
      paramArrayOfByte2 = new byte[32];
      System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte2.length);
    }
    for (;;)
    {
      try
      {
        paramArrayOfByte1 = new SecretKeySpec(paramArrayOfByte2, "AES");
        a = javax.crypto.Cipher.getInstance("AES/CTR/" + "NoPadding");
        try
        {
          paramArrayOfByte2 = a;
          if (paramInt == 0)
          {
            paramInt = 1;
            paramArrayOfByte2.init(paramInt, paramArrayOfByte1, new IvParameterSpec(arrayOfByte));
            return;
          }
        }
        finally {}
        paramInt = 2;
      }
      catch (Exception paramArrayOfByte1)
      {
        a = null;
        throw paramArrayOfByte1;
      }
    }
  }
  
  public void a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    a.update(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
  }
  
  public int b()
  {
    return 32;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.AES256CTR
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */