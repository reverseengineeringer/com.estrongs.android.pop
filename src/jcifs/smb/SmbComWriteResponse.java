package jcifs.smb;

class SmbComWriteResponse
  extends ServerMessageBlock
{
  long count;
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    count = (readInt2(paramArrayOfByte, paramInt) & 0xFFFF);
    return 8;
  }
  
  public String toString()
  {
    return new String("SmbComWriteResponse[" + super.toString() + ",count=" + count + "]");
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
 * Qualified Name:     jcifs.smb.SmbComWriteResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */