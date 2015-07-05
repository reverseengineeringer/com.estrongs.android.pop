package jcifs.smb;

class TransWaitNamedPipe
  extends SmbComTransaction
{
  TransWaitNamedPipe(String paramString)
  {
    name = paramString;
    command = 37;
    subCommand = 83;
    timeout = -1;
    maxParameterCount = 0;
    maxDataCount = 0;
    maxSetupCount = 0;
    setupCount = 2;
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
    return new String("TransWaitNamedPipe[" + super.toString() + ",pipeName=" + name + "]");
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
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = subCommand;
    paramInt = i + 1;
    paramArrayOfByte[i] = 0;
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = 0;
    paramArrayOfByte[i] = 0;
    return 4;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransWaitNamedPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */