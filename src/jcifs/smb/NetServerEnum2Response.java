package jcifs.smb;

import jcifs.util.LogStream;

class NetServerEnum2Response
  extends SmbComTransactionResponse
{
  private int converter;
  String lastName;
  private int totalAvailableEntries;
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject1 = null;
    results = new NetServerEnum2Response.ServerInfo1[numEntries];
    paramInt2 = 0;
    NetServerEnum2Response.ServerInfo1 localServerInfo1 = null;
    int i = paramInt1;
    while (paramInt2 < numEntries)
    {
      Object localObject2 = results;
      localServerInfo1 = new NetServerEnum2Response.ServerInfo1(this);
      localObject2[paramInt2] = localServerInfo1;
      name = readString(paramArrayOfByte, i, 16, false);
      int j = i + 16;
      i = j + 1;
      versionMajor = (paramArrayOfByte[j] & 0xFF);
      j = i + 1;
      versionMinor = (paramArrayOfByte[i] & 0xFF);
      type = readInt4(paramArrayOfByte, j);
      i = j + 4;
      j = readInt4(paramArrayOfByte, i);
      i += 4;
      commentOrMasterBrowser = readString(paramArrayOfByte, (j & 0xFFFF) - converter + paramInt1, 48, false);
      localObject2 = log;
      if (LogStream.level >= 4) {
        log.println(localServerInfo1);
      }
      paramInt2 += 1;
    }
    if (numEntries == 0) {}
    for (paramArrayOfByte = (byte[])localObject1;; paramArrayOfByte = name)
    {
      lastName = paramArrayOfByte;
      return i - paramInt1;
    }
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
    return new String("NetServerEnum2Response[" + super.toString() + ",status=" + status + ",converter=" + converter + ",entriesReturned=" + numEntries + ",totalAvailableEntries=" + totalAvailableEntries + ",lastName=" + lastName + "]");
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
 * Qualified Name:     jcifs.smb.NetServerEnum2Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */