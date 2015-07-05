package jcifs.smb;

class SmbComTreeDisconnect
  extends ServerMessageBlock
{
  SmbComTreeDisconnect()
  {
    command = 113;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("SmbComTreeDisconnect[" + super.toString() + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComTreeDisconnect
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */