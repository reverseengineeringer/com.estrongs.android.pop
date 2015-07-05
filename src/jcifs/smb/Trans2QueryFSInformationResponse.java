package jcifs.smb;

class Trans2QueryFSInformationResponse
  extends SmbComTransactionResponse
{
  static final int SMB_FS_FULL_SIZE_INFORMATION = 1007;
  static final int SMB_INFO_ALLOCATION = 1;
  static final int SMB_QUERY_FS_SIZE_INFO = 259;
  AllocInfo info;
  private int informationLevel;
  
  Trans2QueryFSInformationResponse(int paramInt)
  {
    informationLevel = paramInt;
    command = 50;
    subCommand = 3;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    switch (informationLevel)
    {
    default: 
      return 0;
    case 1: 
      return readSmbInfoAllocationWireFormat(paramArrayOfByte, paramInt1);
    case 259: 
      return readSmbQueryFSSizeInfoWireFormat(paramArrayOfByte, paramInt1);
    }
    return readFsFullSizeInformationWireFormat(paramArrayOfByte, paramInt1);
  }
  
  int readFsFullSizeInformationWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    Trans2QueryFSInformationResponse.SmbInfoAllocation localSmbInfoAllocation = new Trans2QueryFSInformationResponse.SmbInfoAllocation(this);
    alloc = readInt8(paramArrayOfByte, paramInt);
    int i = paramInt + 8;
    free = readInt8(paramArrayOfByte, i);
    i = i + 8 + 8;
    sectPerAlloc = readInt4(paramArrayOfByte, i);
    i += 4;
    bytesPerSect = readInt4(paramArrayOfByte, i);
    info = localSmbInfoAllocation;
    return i + 4 - paramInt;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSmbInfoAllocationWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    Trans2QueryFSInformationResponse.SmbInfoAllocation localSmbInfoAllocation = new Trans2QueryFSInformationResponse.SmbInfoAllocation(this);
    int i = paramInt + 4;
    sectPerAlloc = readInt4(paramArrayOfByte, i);
    i += 4;
    alloc = readInt4(paramArrayOfByte, i);
    i += 4;
    free = readInt4(paramArrayOfByte, i);
    i += 4;
    bytesPerSect = readInt2(paramArrayOfByte, i);
    info = localSmbInfoAllocation;
    return i + 4 - paramInt;
  }
  
  int readSmbQueryFSSizeInfoWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    Trans2QueryFSInformationResponse.SmbInfoAllocation localSmbInfoAllocation = new Trans2QueryFSInformationResponse.SmbInfoAllocation(this);
    alloc = readInt8(paramArrayOfByte, paramInt);
    int i = paramInt + 8;
    free = readInt8(paramArrayOfByte, i);
    i += 8;
    sectPerAlloc = readInt4(paramArrayOfByte, i);
    i += 4;
    bytesPerSect = readInt4(paramArrayOfByte, i);
    info = localSmbInfoAllocation;
    return i + 4 - paramInt;
  }
  
  public String toString()
  {
    return new String("Trans2QueryFSInformationResponse[" + super.toString() + "]");
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
 * Qualified Name:     jcifs.smb.Trans2QueryFSInformationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */