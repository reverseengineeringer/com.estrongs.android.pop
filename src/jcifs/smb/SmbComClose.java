package jcifs.smb;

class SmbComClose
  extends ServerMessageBlock
{
  private int fid;
  private long lastWriteTime;
  
  SmbComClose(int paramInt, long paramLong)
  {
    fid = paramInt;
    lastWriteTime = paramLong;
    command = 4;
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
    return new String("SmbComClose[" + super.toString() + ",fid=" + fid + ",lastWriteTime=" + lastWriteTime + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(fid, paramArrayOfByte, paramInt);
    writeUTime(lastWriteTime, paramArrayOfByte, paramInt + 2);
    return 6;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComClose
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */