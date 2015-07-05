package jcifs.smb;

import java.util.Date;
import jcifs.util.Hexdump;

class SmbComQueryInformationResponse
  extends ServerMessageBlock
  implements Info
{
  private int fileAttributes = 0;
  private int fileSize = 0;
  private long lastWriteTime = 0L;
  private long serverTimeZoneOffset;
  
  SmbComQueryInformationResponse(long paramLong)
  {
    serverTimeZoneOffset = paramLong;
    command = 8;
  }
  
  public int getAttributes()
  {
    return fileAttributes;
  }
  
  public long getCreateTime()
  {
    return lastWriteTime + serverTimeZoneOffset;
  }
  
  public long getLastWriteTime()
  {
    return lastWriteTime + serverTimeZoneOffset;
  }
  
  public long getSize()
  {
    return fileSize;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if (wordCount == 0) {
      return 0;
    }
    fileAttributes = readInt2(paramArrayOfByte, paramInt);
    paramInt += 2;
    lastWriteTime = readUTime(paramArrayOfByte, paramInt);
    fileSize = readInt4(paramArrayOfByte, paramInt + 4);
    return 20;
  }
  
  public String toString()
  {
    return new String("SmbComQueryInformationResponse[" + super.toString() + ",fileAttributes=0x" + Hexdump.toHexString(fileAttributes, 4) + ",lastWriteTime=" + new Date(lastWriteTime) + ",fileSize=" + fileSize + "]");
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
 * Qualified Name:     jcifs.smb.SmbComQueryInformationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */