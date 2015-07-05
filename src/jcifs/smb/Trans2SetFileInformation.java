package jcifs.smb;

class Trans2SetFileInformation
  extends SmbComTransaction
{
  static final int SMB_FILE_BASIC_INFO = 257;
  private int attributes;
  private long createTime;
  private int fid;
  private long lastWriteTime;
  
  Trans2SetFileInformation(int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    fid = paramInt1;
    attributes = paramInt2;
    createTime = paramLong1;
    lastWriteTime = paramLong2;
    command = 50;
    subCommand = 8;
    maxParameterCount = 6;
    maxDataCount = 0;
    maxSetupCount = 0;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("Trans2SetFileInformation[" + super.toString() + ",fid=" + fid + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeTime(createTime, paramArrayOfByte, paramInt);
    int i = paramInt + 8;
    writeInt8(0L, paramArrayOfByte, i);
    i += 8;
    writeTime(lastWriteTime, paramArrayOfByte, i);
    i += 8;
    writeInt8(0L, paramArrayOfByte, i);
    i += 8;
    writeInt2(attributes | 0x80, paramArrayOfByte, i);
    i += 2;
    writeInt8(0L, paramArrayOfByte, i);
    return i + 6 - paramInt;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(fid, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(257L, paramArrayOfByte, i);
    i += 2;
    writeInt2(0L, paramArrayOfByte, i);
    return i + 2 - paramInt;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = subCommand;
    paramArrayOfByte[i] = 0;
    return 2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2SetFileInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */