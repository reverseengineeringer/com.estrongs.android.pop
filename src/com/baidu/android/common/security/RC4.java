package com.baidu.android.common.security;

public class RC4
{
  private static final int STATE_LENGTH = 256;
  private byte[] engineState = null;
  private byte[] workingKey = null;
  private int x = 0;
  private int y = 0;
  
  public RC4(String paramString)
  {
    workingKey = paramString.getBytes();
  }
  
  private void processBytes(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt1 + paramInt2 > paramArrayOfByte1.length) {
      throw new RuntimeException("input buffer too short");
    }
    if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
      throw new RuntimeException("output buffer too short");
    }
    int j = 0;
    while (j < paramInt2)
    {
      x = (x + 1 & 0xFF);
      y = (engineState[x] + y & 0xFF);
      int i = engineState[x];
      engineState[x] = engineState[y];
      engineState[y] = i;
      paramArrayOfByte2[(j + paramInt3)] = ((byte)(paramArrayOfByte1[(j + paramInt1)] ^ engineState[(engineState[x] + engineState[y] & 0xFF)]));
      j += 1;
    }
  }
  
  private void reset()
  {
    setKey(workingKey);
  }
  
  private void setKey(byte[] paramArrayOfByte)
  {
    int k = 0;
    x = 0;
    y = 0;
    if (engineState == null) {
      engineState = new byte['Ā'];
    }
    int j = 0;
    while (j < 256)
    {
      engineState[j] = ((byte)j);
      j += 1;
    }
    int m = 0;
    j = 0;
    while (k < 256)
    {
      m = m + ((paramArrayOfByte[j] & 0xFF) + engineState[k]) & 0xFF;
      int i = engineState[k];
      engineState[k] = engineState[m];
      engineState[m] = i;
      j = (j + 1) % paramArrayOfByte.length;
      k += 1;
    }
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
  {
    reset();
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    processBytes(paramArrayOfByte, 0, paramArrayOfByte.length, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
  {
    reset();
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    processBytes(paramArrayOfByte, 0, paramArrayOfByte.length, arrayOfByte, 0);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.security.RC4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */