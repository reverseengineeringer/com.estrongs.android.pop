package jcifs.smb;

class SmbComFindClose2
  extends ServerMessageBlock
{
  private int sid;
  
  SmbComFindClose2(int paramInt)
  {
    sid = paramInt;
    command = 52;
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
    return new String("SmbComFindClose2[" + super.toString() + ",sid=" + sid + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(sid, paramArrayOfByte, paramInt);
    return 2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComFindClose2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */