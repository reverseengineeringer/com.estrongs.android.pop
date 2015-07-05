package jcifs.smb;

class Trans2QueryPathInformationResponse
  extends SmbComTransactionResponse
{
  static final int SMB_QUERY_FILE_BASIC_INFO = 257;
  static final int SMB_QUERY_FILE_STANDARD_INFO = 258;
  Info info;
  private int informationLevel;
  
  Trans2QueryPathInformationResponse(int paramInt)
  {
    informationLevel = paramInt;
    subCommand = 5;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    switch (informationLevel)
    {
    default: 
      return 0;
    case 257: 
      return readSmbQueryFileBasicInfoWireFormat(paramArrayOfByte, paramInt1);
    }
    return readSmbQueryFileStandardInfoWireFormat(paramArrayOfByte, paramInt1);
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 2;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSmbQueryFileBasicInfoWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    Trans2QueryPathInformationResponse.SmbQueryFileBasicInfo localSmbQueryFileBasicInfo = new Trans2QueryPathInformationResponse.SmbQueryFileBasicInfo(this);
    createTime = readTime(paramArrayOfByte, paramInt);
    int i = paramInt + 8;
    lastAccessTime = readTime(paramArrayOfByte, i);
    i += 8;
    lastWriteTime = readTime(paramArrayOfByte, i);
    i += 8;
    changeTime = readTime(paramArrayOfByte, i);
    i += 8;
    attributes = readInt2(paramArrayOfByte, i);
    info = localSmbQueryFileBasicInfo;
    return i + 2 - paramInt;
  }
  
  int readSmbQueryFileStandardInfoWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool2 = true;
    Trans2QueryPathInformationResponse.SmbQueryFileStandardInfo localSmbQueryFileStandardInfo = new Trans2QueryPathInformationResponse.SmbQueryFileStandardInfo(this);
    allocationSize = readInt8(paramArrayOfByte, paramInt);
    int i = paramInt + 8;
    endOfFile = readInt8(paramArrayOfByte, i);
    i += 8;
    numberOfLinks = readInt4(paramArrayOfByte, i);
    i += 4;
    int j = i + 1;
    if ((paramArrayOfByte[i] & 0xFF) > 0)
    {
      bool1 = true;
      deletePending = bool1;
      if ((paramArrayOfByte[j] & 0xFF) <= 0) {
        break label123;
      }
    }
    label123:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      directory = bool1;
      info = localSmbQueryFileStandardInfo;
      return j + 1 - paramInt;
      bool1 = false;
      break;
    }
  }
  
  public String toString()
  {
    return new String("Trans2QueryPathInformationResponse[" + super.toString() + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2QueryPathInformationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */