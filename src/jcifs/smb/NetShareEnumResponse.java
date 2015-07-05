package jcifs.smb;

import jcifs.util.LogStream;

class NetShareEnumResponse
  extends SmbComTransactionResponse
{
  private int converter;
  private int totalAvailableEntries;
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    useUnicode = false;
    results = new SmbShareInfo[numEntries];
    paramInt2 = 0;
    int i = paramInt1;
    while (paramInt2 < numEntries)
    {
      Object localObject = results;
      SmbShareInfo localSmbShareInfo = new SmbShareInfo();
      localObject[paramInt2] = localSmbShareInfo;
      netName = readString(paramArrayOfByte, i, 13, false);
      i += 14;
      type = readInt2(paramArrayOfByte, i);
      i += 2;
      int j = readInt4(paramArrayOfByte, i);
      i += 4;
      remark = readString(paramArrayOfByte, (j & 0xFFFF) - converter + paramInt1, 128, false);
      localObject = log;
      if (LogStream.level >= 4) {
        log.println(localSmbShareInfo);
      }
      paramInt2 += 1;
    }
    return i - paramInt1;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    status = readInt2(paramArrayOfByte, paramInt1);
    paramInt2 = paramInt1 + 2;
    converter = readInt2(paramArrayOfByte, paramInt2);
    paramInt2 += 2;
    numEntries = readInt2(paramArrayOfByte, paramInt2);
    paramInt2 += 2;
    totalAvailableEntries = readInt2(paramArrayOfByte, paramInt2);
    return paramInt2 + 2 - paramInt1;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("NetShareEnumResponse[" + super.toString() + ",status=" + status + ",converter=" + converter + ",entriesReturned=" + numEntries + ",totalAvailableEntries=" + totalAvailableEntries + "]");
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
 * Qualified Name:     jcifs.smb.NetShareEnumResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */