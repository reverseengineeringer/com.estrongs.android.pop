package jcifs.smb;

import jcifs.util.Hexdump;

class NtTransQuerySecurityDesc
  extends SmbComNtTransaction
{
  int fid;
  int securityInformation;
  
  NtTransQuerySecurityDesc(int paramInt1, int paramInt2)
  {
    fid = paramInt1;
    securityInformation = paramInt2;
    command = -96;
    function = 6;
    setupCount = 0;
    totalDataCount = 0;
    maxParameterCount = 4;
    maxDataCount = 32768;
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
    return new String("NtTransQuerySecurityDesc[" + super.toString() + ",fid=0x" + Hexdump.toHexString(fid, 4) + ",securityInformation=0x" + Hexdump.toHexString(securityInformation, 8) + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(fid, paramArrayOfByte, paramInt);
    int j = paramInt + 2;
    int i = j + 1;
    paramArrayOfByte[j] = 0;
    j = i + 1;
    paramArrayOfByte[i] = 0;
    writeInt4(securityInformation, paramArrayOfByte, j);
    return j + 4 - paramInt;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtTransQuerySecurityDesc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */