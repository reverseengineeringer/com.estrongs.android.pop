package jcifs.smb;

import jcifs.util.Hexdump;

class SmbComRename
  extends ServerMessageBlock
{
  private String newFileName;
  private String oldFileName;
  private int searchAttributes;
  
  SmbComRename(String paramString1, String paramString2)
  {
    command = 7;
    oldFileName = paramString1;
    newFileName = paramString2;
    searchAttributes = 22;
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
    return new String("SmbComRename[" + super.toString() + ",searchAttributes=0x" + Hexdump.toHexString(searchAttributes, 4) + ",oldFileName=" + oldFileName + ",newFileName=" + newFileName + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 4;
    int j = i + writeString(oldFileName, paramArrayOfByte, i);
    i = j + 1;
    paramArrayOfByte[j] = 4;
    if (useUnicode)
    {
      j = i + 1;
      paramArrayOfByte[i] = 0;
      i = j;
    }
    for (;;)
    {
      return i + writeString(newFileName, paramArrayOfByte, i) - paramInt;
    }
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(searchAttributes, paramArrayOfByte, paramInt);
    return 2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComRename
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */