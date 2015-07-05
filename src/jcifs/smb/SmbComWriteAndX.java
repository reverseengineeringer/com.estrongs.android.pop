package jcifs.smb;

import jcifs.Config;

class SmbComWriteAndX
  extends AndXServerMessageBlock
{
  private static final int CLOSE_BATCH_LIMIT = Config.getInt("jcifs.smb.client.WriteAndX.Close", 1);
  private static final int READ_ANDX_BATCH_LIMIT = Config.getInt("jcifs.smb.client.WriteAndX.ReadAndX", 1);
  private byte[] b;
  private int dataLength;
  private int dataOffset;
  private int fid;
  private int off;
  private long offset;
  private int pad;
  private int remaining;
  int writeMode;
  
  SmbComWriteAndX()
  {
    super(null);
    command = 47;
  }
  
  SmbComWriteAndX(int paramInt1, long paramLong, int paramInt2, byte[] paramArrayOfByte, int paramInt3, int paramInt4, ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    fid = paramInt1;
    offset = paramLong;
    remaining = paramInt2;
    b = paramArrayOfByte;
    off = paramInt3;
    dataLength = paramInt4;
    command = 47;
  }
  
  int getBatchLimit(byte paramByte)
  {
    if (paramByte == 46) {
      return READ_ANDX_BATCH_LIMIT;
    }
    if (paramByte == 4) {
      return CLOSE_BATCH_LIMIT;
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
  
  void setParam(int paramInt1, long paramLong, int paramInt2, byte[] paramArrayOfByte, int paramInt3, int paramInt4)
  {
    fid = paramInt1;
    offset = paramLong;
    remaining = paramInt2;
    b = paramArrayOfByte;
    off = paramInt3;
    dataLength = paramInt4;
    digest = null;
  }
  
  public String toString()
  {
    return new String("SmbComWriteAndX[" + super.toString() + ",fid=" + fid + ",offset=" + offset + ",writeMode=" + writeMode + ",remaining=" + remaining + ",dataLength=" + dataLength + ",dataOffset=" + dataOffset + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt;
    for (;;)
    {
      int j = pad;
      pad = (j - 1);
      if (j <= 0) {
        break;
      }
      paramArrayOfByte[i] = -18;
      i += 1;
    }
    System.arraycopy(b, off, paramArrayOfByte, i, dataLength);
    return i + dataLength - paramInt;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    dataOffset = (paramInt - headerStart + 26);
    pad = ((dataOffset - headerStart) % 4);
    if (pad == 0) {}
    for (int i = 0;; i = 4 - pad)
    {
      pad = i;
      dataOffset += pad;
      writeInt2(fid, paramArrayOfByte, paramInt);
      i = paramInt + 2;
      writeInt4(offset, paramArrayOfByte, i);
      i += 4;
      j = 0;
      while (j < 4)
      {
        paramArrayOfByte[i] = -1;
        j += 1;
        i += 1;
      }
    }
    writeInt2(writeMode, paramArrayOfByte, i);
    i += 2;
    writeInt2(remaining, paramArrayOfByte, i);
    int j = i + 2;
    i = j + 1;
    paramArrayOfByte[j] = 0;
    j = i + 1;
    paramArrayOfByte[i] = 0;
    writeInt2(dataLength, paramArrayOfByte, j);
    i = j + 2;
    writeInt2(dataOffset, paramArrayOfByte, i);
    i += 2;
    writeInt4(offset >> 32, paramArrayOfByte, i);
    return i + 4 - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComWriteAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */