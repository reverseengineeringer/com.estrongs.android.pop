package jcifs.smb;

class TransCallNamedPipeResponse
  extends SmbComTransactionResponse
{
  private SmbNamedPipe pipe;
  
  TransCallNamedPipeResponse(SmbNamedPipe paramSmbNamedPipe)
  {
    pipe = paramSmbNamedPipe;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (pipe.pipeIn != null)
    {
      TransactNamedPipeInputStream localTransactNamedPipeInputStream = (TransactNamedPipeInputStream)pipe.pipeIn;
      synchronized (lock)
      {
        localTransactNamedPipeInputStream.receive(paramArrayOfByte, paramInt1, paramInt2);
        lock.notify();
        return paramInt2;
      }
    }
    return paramInt2;
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
    return new String("TransCallNamedPipeResponse[" + super.toString() + "]");
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
 * Qualified Name:     jcifs.smb.TransCallNamedPipeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */