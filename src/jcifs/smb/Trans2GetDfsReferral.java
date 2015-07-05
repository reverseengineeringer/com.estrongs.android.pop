package jcifs.smb;

class Trans2GetDfsReferral
  extends SmbComTransaction
{
  private int maxReferralLevel = 3;
  
  Trans2GetDfsReferral(String paramString)
  {
    path = paramString;
    command = 50;
    subCommand = 16;
    totalDataCount = 0;
    maxParameterCount = 0;
    maxDataCount = 4096;
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
    return new String("Trans2GetDfsReferral[" + super.toString() + ",maxReferralLevel=0x" + maxReferralLevel + ",filename=" + path + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(maxReferralLevel, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    return i + writeString(path, paramArrayOfByte, i) - paramInt;
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
 * Qualified Name:     jcifs.smb.Trans2GetDfsReferral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */