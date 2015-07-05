package jcifs.smb;

class TransPeekNamedPipeResponse
  extends SmbComTransactionResponse
{
  static final int STATUS_CONNECTION_OK = 3;
  static final int STATUS_DISCONNECTED = 1;
  static final int STATUS_LISTENING = 2;
  static final int STATUS_SERVER_END_CLOSED = 4;
  int available;
  private int head;
  private SmbNamedPipe pipe;
  int status;
  
  TransPeekNamedPipeResponse(SmbNamedPipe paramSmbNamedPipe)
  {
    pipe = paramSmbNamedPipe;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    available = readInt2(paramArrayOfByte, paramInt1);
    paramInt1 += 2;
    head = readInt2(paramArrayOfByte, paramInt1);
    status = readInt2(paramArrayOfByte, paramInt1 + 2);
    return 6;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("TransPeekNamedPipeResponse[" + super.toString() + "]");
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
 * Qualified Name:     jcifs.smb.TransPeekNamedPipeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */