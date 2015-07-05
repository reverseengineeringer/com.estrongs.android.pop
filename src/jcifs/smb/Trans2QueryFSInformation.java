package jcifs.smb;

import jcifs.util.Hexdump;

class Trans2QueryFSInformation
  extends SmbComTransaction
{
  private int informationLevel;
  
  Trans2QueryFSInformation(int paramInt)
  {
    command = 50;
    subCommand = 3;
    informationLevel = paramInt;
    totalParameterCount = 2;
    totalDataCount = 0;
    maxParameterCount = 0;
    maxDataCount = 800;
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
    return new String("Trans2QueryFSInformation[" + super.toString() + ",informationLevel=0x" + Hexdump.toHexString(informationLevel, 3) + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(informationLevel, paramArrayOfByte, paramInt);
    return paramInt + 2 - paramInt;
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
 * Qualified Name:     jcifs.smb.Trans2QueryFSInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */