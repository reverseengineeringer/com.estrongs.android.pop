package jcifs.smb;

class SmbComWrite
  extends ServerMessageBlock
{
  private byte[] b;
  private int count;
  private int fid;
  private int off;
  private int offset;
  private int remaining;
  
  SmbComWrite()
  {
    command = 11;
  }
  
  SmbComWrite(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte, int paramInt4, int paramInt5)
  {
    fid = paramInt1;
    count = paramInt5;
    offset = paramInt2;
    remaining = paramInt3;
    b = paramArrayOfByte;
    off = paramInt4;
    command = 11;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  void setParam(int paramInt1, long paramLong, int paramInt2, byte[] paramArrayOfByte, int paramInt3, int paramInt4)
  {
    fid = paramInt1;
    offset = ((int)(0xFFFFFFFF & paramLong));
    remaining = paramInt2;
    b = paramArrayOfByte;
    off = paramInt3;
    count = paramInt4;
    digest = null;
  }
  
  public String toString()
  {
    return new String("SmbComWrite[" + super.toString() + ",fid=" + fid + ",count=" + count + ",offset=" + offset + ",remaining=" + remaining + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 1;
    writeInt2(count, paramArrayOfByte, i);
    i += 2;
    System.arraycopy(b, off, paramArrayOfByte, i, count);
    return i + count - paramInt;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(fid, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(count, paramArrayOfByte, i);
    i += 2;
    writeInt4(offset, paramArrayOfByte, i);
    i += 4;
    writeInt2(remaining, paramArrayOfByte, i);
    return i + 2 - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComWrite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */