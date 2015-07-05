package jcifs.ntlmssp;

import jcifs.Config;

public abstract class NtlmMessage
  implements NtlmFlags
{
  protected static final byte[] NTLMSSP_SIGNATURE = { 78, 84, 76, 77, 83, 83, 80, 0 };
  private static final String OEM_ENCODING = Config.DEFAULT_OEM_ENCODING;
  protected static final String UNI_ENCODING = "UTF-16LE";
  private int flags;
  
  static String getOEMEncoding()
  {
    return OEM_ENCODING;
  }
  
  static byte[] readSecurityBuffer(byte[] paramArrayOfByte, int paramInt)
  {
    int i = readUShort(paramArrayOfByte, paramInt);
    paramInt = readULong(paramArrayOfByte, paramInt + 4);
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  static int readULong(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24;
  }
  
  static int readUShort(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8;
  }
  
  static void writeSecurityBuffer(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte2 != null) {}
    for (int i = paramArrayOfByte2.length; i == 0; i = 0) {
      return;
    }
    writeUShort(paramArrayOfByte1, paramInt1, i);
    writeUShort(paramArrayOfByte1, paramInt1 + 2, i);
    writeULong(paramArrayOfByte1, paramInt1 + 4, paramInt2);
    System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, paramInt2, i);
  }
  
  static void writeULong(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 & 0xFF));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 16 & 0xFF));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 >> 24 & 0xFF));
  }
  
  static void writeUShort(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 & 0xFF));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 8 & 0xFF));
  }
  
  public boolean getFlag(int paramInt)
  {
    return (getFlags() & paramInt) != 0;
  }
  
  public int getFlags()
  {
    return flags;
  }
  
  public void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramInt = getFlags() | paramInt;; paramInt = getFlags() & (paramInt ^ 0xFFFFFFFF))
    {
      setFlags(paramInt);
      return;
    }
  }
  
  public void setFlags(int paramInt)
  {
    flags = paramInt;
  }
  
  public abstract byte[] toByteArray();
}

/* Location:
 * Qualified Name:     jcifs.ntlmssp.NtlmMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */