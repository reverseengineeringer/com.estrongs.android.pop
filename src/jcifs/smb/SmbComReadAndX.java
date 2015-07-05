package jcifs.smb;

import jcifs.Config;

class SmbComReadAndX
  extends AndXServerMessageBlock
{
  private static final int BATCH_LIMIT = Config.getInt("jcifs.smb.client.ReadAndX.Close", 1);
  private int fid;
  int maxCount;
  int minCount;
  private long offset;
  private int openTimeout;
  int remaining;
  
  SmbComReadAndX()
  {
    super(null);
    command = 46;
    openTimeout = -1;
  }
  
  SmbComReadAndX(int paramInt1, long paramLong, int paramInt2, ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    fid = paramInt1;
    offset = paramLong;
    minCount = paramInt2;
    maxCount = paramInt2;
    command = 46;
    openTimeout = -1;
  }
  
  int getBatchLimit(byte paramByte)
  {
    if (paramByte == 4) {
      return BATCH_LIMIT;
    }
    return 0;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  void setParam(int paramInt1, long paramLong, int paramInt2)
  {
    fid = paramInt1;
    offset = paramLong;
    minCount = paramInt2;
    maxCount = paramInt2;
  }
  
  public String toString()
  {
    return new String("SmbComReadAndX[" + super.toString() + ",fid=" + fid + ",offset=" + offset + ",maxCount=" + maxCount + ",minCount=" + minCount + ",openTimeout=" + openTimeout + ",remaining=" + remaining + ",offset=" + offset + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(fid, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt4(offset, paramArrayOfByte, i);
    i += 4;
    writeInt2(maxCount, paramArrayOfByte, i);
    i += 2;
    writeInt2(minCount, paramArrayOfByte, i);
    i += 2;
    writeInt4(openTimeout, paramArrayOfByte, i);
    i += 4;
    writeInt2(remaining, paramArrayOfByte, i);
    i += 2;
    writeInt4(offset >> 32, paramArrayOfByte, i);
    return i + 4 - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComReadAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */