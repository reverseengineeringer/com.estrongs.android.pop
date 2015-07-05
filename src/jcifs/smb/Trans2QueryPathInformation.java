package jcifs.smb;

import jcifs.util.Hexdump;

class Trans2QueryPathInformation
  extends SmbComTransaction
{
  private int informationLevel;
  
  Trans2QueryPathInformation(String paramString, int paramInt)
  {
    path = paramString;
    informationLevel = paramInt;
    command = 50;
    subCommand = 5;
    totalDataCount = 0;
    maxParameterCount = 2;
    maxDataCount = 40;
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
    return new String("Trans2QueryPathInformation[" + super.toString() + ",informationLevel=0x" + Hexdump.toHexString(informationLevel, 3) + ",filename=" + path + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(informationLevel, paramArrayOfByte, paramInt);
    int j = paramInt + 2;
    int i = j + 1;
    paramArrayOfByte[j] = 0;
    j = i + 1;
    paramArrayOfByte[i] = 0;
    i = j + 1;
    paramArrayOfByte[j] = 0;
    j = i + 1;
    paramArrayOfByte[i] = 0;
    return j + writeString(path, paramArrayOfByte, j) - paramInt;
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
 * Qualified Name:     jcifs.smb.Trans2QueryPathInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */