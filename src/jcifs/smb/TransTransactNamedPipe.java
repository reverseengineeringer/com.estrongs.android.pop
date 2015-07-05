package jcifs.smb;

import jcifs.util.LogStream;

class TransTransactNamedPipe
  extends SmbComTransaction
{
  private byte[] pipeData;
  private int pipeDataLen;
  private int pipeDataOff;
  private int pipeFid;
  
  TransTransactNamedPipe(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    pipeFid = paramInt1;
    pipeData = paramArrayOfByte;
    pipeDataOff = paramInt2;
    pipeDataLen = paramInt3;
    command = 37;
    subCommand = 38;
    maxParameterCount = 0;
    maxDataCount = 65535;
    maxSetupCount = 0;
    setupCount = 2;
    name = "\\PIPE\\";
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
    return new String("TransTransactNamedPipe[" + super.toString() + ",pipeFid=" + pipeFid + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length - paramInt < pipeDataLen)
    {
      paramArrayOfByte = log;
      if (LogStream.level >= 3) {
        log.println("TransTransactNamedPipe data too long for buffer");
      }
      return 0;
    }
    System.arraycopy(pipeData, pipeDataOff, paramArrayOfByte, paramInt, pipeDataLen);
    return pipeDataLen;
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
    writeInt2(pipeFid, paramArrayOfByte, paramInt);
    return 4;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransTransactNamedPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */