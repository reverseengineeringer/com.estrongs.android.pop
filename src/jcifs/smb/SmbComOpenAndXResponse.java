package jcifs.smb;

class SmbComOpenAndXResponse
  extends AndXServerMessageBlock
{
  int action;
  int dataSize;
  int deviceState;
  int fid;
  int fileAttributes;
  int fileType;
  int grantedAccess;
  long lastWriteTime;
  int serverFid;
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    fid = readInt2(paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    fileAttributes = readInt2(paramArrayOfByte, i);
    i += 2;
    lastWriteTime = readUTime(paramArrayOfByte, i);
    i += 4;
    dataSize = readInt4(paramArrayOfByte, i);
    i += 4;
    grantedAccess = readInt2(paramArrayOfByte, i);
    i += 2;
    fileType = readInt2(paramArrayOfByte, i);
    i += 2;
    deviceState = readInt2(paramArrayOfByte, i);
    i += 2;
    action = readInt2(paramArrayOfByte, i);
    i += 2;
    serverFid = readInt4(paramArrayOfByte, i);
    return i + 6 - paramInt;
  }
  
  public String toString()
  {
    return new String("SmbComOpenAndXResponse[" + super.toString() + ",fid=" + fid + ",fileAttributes=" + fileAttributes + ",lastWriteTime=" + lastWriteTime + ",dataSize=" + dataSize + ",grantedAccess=" + grantedAccess + ",fileType=" + fileType + ",deviceState=" + deviceState + ",action=" + action + ",serverFid=" + serverFid + "]");
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
 * Qualified Name:     jcifs.smb.SmbComOpenAndXResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */