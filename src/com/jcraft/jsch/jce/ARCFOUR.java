package com.jcraft.jsch.jce;

import javax.crypto.spec.SecretKeySpec;

public class ARCFOUR
  implements com.jcraft.jsch.Cipher
{
  private javax.crypto.Cipher a;
  
  public int a()
  {
    return 8;
  }
  
  public void a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2 = paramArrayOfByte1;
    if (paramArrayOfByte1.length > 16)
    {
      paramArrayOfByte2 = new byte[16];
      System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte2.length);
    }
    for (;;)
    {
      try
      {
        a = javax.crypto.Cipher.getInstance("RC4");
        paramArrayOfByte1 = new SecretKeySpec(paramArrayOfByte2, "RC4");
        try
        {
          paramArrayOfByte2 = a;
          if (paramInt == 0)
          {
            paramInt = 1;
            paramArrayOfByte2.init(paramInt, paramArrayOfByte1);
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
    return 16;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.ARCFOUR
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */