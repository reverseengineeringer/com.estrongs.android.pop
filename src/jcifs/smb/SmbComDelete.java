package jcifs.smb;

import jcifs.util.Hexdump;

class SmbComDelete
  extends ServerMessageBlock
{
  private int searchAttributes;
  
  SmbComDelete(String paramString)
  {
    path = paramString;
    command = 6;
    searchAttributes = 6;
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
    return new String("SmbComDelete[" + super.toString() + ",searchAttributes=0x" + Hexdump.toHexString(searchAttributes, 4) + ",fileName=" + path + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 4;
    return i + writeString(path, paramArrayOfByte, i) - paramInt;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(searchAttributes, paramArrayOfByte, paramInt);
    return 2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComDelete
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */