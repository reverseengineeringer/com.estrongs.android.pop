package jcifs.smb;

class SmbComDeleteDirectory
  extends ServerMessageBlock
{
  SmbComDeleteDirectory(String paramString)
  {
    path = paramString;
    command = 1;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("SmbComDeleteDirectory[" + super.toString() + ",directoryName=" + path + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 4;
    return i + writeString(path, paramArrayOfByte, i) - paramInt;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComDeleteDirectory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */