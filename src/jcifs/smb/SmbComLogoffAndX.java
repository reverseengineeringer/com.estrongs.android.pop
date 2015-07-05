package jcifs.smb;

class SmbComLogoffAndX
  extends AndXServerMessageBlock
{
  SmbComLogoffAndX(ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    command = 116;
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
    return new String("SmbComLogoffAndX[" + super.toString() + "]");
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
 * Qualified Name:     jcifs.smb.SmbComLogoffAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */