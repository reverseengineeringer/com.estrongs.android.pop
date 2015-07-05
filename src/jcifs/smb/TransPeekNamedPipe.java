package jcifs.smb;

class TransPeekNamedPipe
  extends SmbComTransaction
{
  private int fid;
  
  TransPeekNamedPipe(String paramString, int paramInt)
  {
    name = paramString;
    fid = paramInt;
    command = 37;
    subCommand = 35;
    timeout = -1;
    maxParameterCount = 6;
    maxDataCount = 1;
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
    return new String("TransPeekNamedPipe[" + super.toString() + ",pipeName=" + name + "]");
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
    paramArrayOfByte[i] = 0;
    writeInt2(fid, paramArrayOfByte, i + 1);
    return 4;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransPeekNamedPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */