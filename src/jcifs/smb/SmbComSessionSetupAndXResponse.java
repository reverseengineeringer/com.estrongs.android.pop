package jcifs.smb;

class SmbComSessionSetupAndXResponse
  extends AndXServerMessageBlock
{
  byte[] blob = null;
  boolean isLoggedInAsGuest;
  private String nativeLanMan = "";
  public String nativeOs = "";
  private String primaryDomain = "";
  
  SmbComSessionSetupAndXResponse(ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if (extendedSecurity) {
      System.arraycopy(paramArrayOfByte, paramInt, blob, 0, blob.length);
    }
    for (int i = blob.length + paramInt;; i = paramInt)
    {
      nativeOs = readString(paramArrayOfByte, i);
      i += stringWireLength(nativeOs, i);
      nativeLanMan = readString(paramArrayOfByte, i, paramInt + byteCount, 255, useUnicode);
      int j = i + stringWireLength(nativeLanMan, i);
      i = j;
      if (!extendedSecurity)
      {
        primaryDomain = readString(paramArrayOfByte, j, paramInt + byteCount, 255, useUnicode);
        i = j + stringWireLength(primaryDomain, j);
      }
      return i - paramInt;
    }
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool = true;
    if ((paramArrayOfByte[paramInt] & 0x1) == 1) {}
    for (;;)
    {
      isLoggedInAsGuest = bool;
      int j = paramInt + 2;
      int i = j;
      if (extendedSecurity)
      {
        int k = readInt2(paramArrayOfByte, j);
        i = j + 2;
        blob = new byte[k];
      }
      return i - paramInt;
      bool = false;
    }
  }
  
  public String toString()
  {
    return new String("SmbComSessionSetupAndXResponse[" + super.toString() + ",isLoggedInAsGuest=" + isLoggedInAsGuest + ",nativeOs=" + nativeOs + ",nativeLanMan=" + nativeLanMan + ",primaryDomain=" + primaryDomain + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComSessionSetupAndXResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */