package jcifs.smb;

import jcifs.util.LogStream;

class TransCallNamedPipe
  extends SmbComTransaction
{
  private byte[] pipeData;
  private int pipeDataLen;
  private int pipeDataOff;
  
  TransCallNamedPipe(String paramString, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    name = paramString;
    pipeData = paramArrayOfByte;
    pipeDataOff = paramInt1;
    pipeDataLen = paramInt2;
    command = 37;
    subCommand = 84;
    timeout = -1;
    maxParameterCount = 0;
    maxDataCount = 65535;
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
    return new String("TransCallNamedPipe[" + super.toString() + ",pipeName=" + name + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length - paramInt < pipeDataLen)
    {
      paramArrayOfByte = log;
      if (LogStream.level >= 3) {
        log.println("TransCallNamedPipe data too long for buffer");
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
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = 0;
    paramArrayOfByte[i] = 0;
    return 4;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransCallNamedPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */