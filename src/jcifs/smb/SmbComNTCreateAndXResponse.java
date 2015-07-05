package jcifs.smb;

import java.util.Date;
import jcifs.util.Hexdump;

class SmbComNTCreateAndXResponse
  extends AndXServerMessageBlock
{
  static final int BATCH_OPLOCK_GRANTED = 2;
  static final int EXCLUSIVE_OPLOCK_GRANTED = 1;
  static final int LEVEL_II_OPLOCK_GRANTED = 3;
  long allocationSize;
  long changeTime;
  int createAction;
  long creationTime;
  int deviceState;
  boolean directory;
  long endOfFile;
  int extFileAttributes;
  int fid;
  int fileType;
  boolean isExtended;
  long lastAccessTime;
  long lastWriteTime;
  byte oplockLevel;
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    oplockLevel = paramArrayOfByte[paramInt];
    fid = readInt2(paramArrayOfByte, i);
    i += 2;
    createAction = readInt4(paramArrayOfByte, i);
    i += 4;
    creationTime = readTime(paramArrayOfByte, i);
    i += 8;
    lastAccessTime = readTime(paramArrayOfByte, i);
    i += 8;
    lastWriteTime = readTime(paramArrayOfByte, i);
    i += 8;
    changeTime = readTime(paramArrayOfByte, i);
    i += 8;
    extFileAttributes = readInt4(paramArrayOfByte, i);
    i += 4;
    allocationSize = readInt8(paramArrayOfByte, i);
    i += 8;
    endOfFile = readInt8(paramArrayOfByte, i);
    i += 8;
    fileType = readInt2(paramArrayOfByte, i);
    i += 2;
    deviceState = readInt2(paramArrayOfByte, i);
    i += 2;
    if ((paramArrayOfByte[i] & 0xFF) > 0) {}
    for (boolean bool = true;; bool = false)
    {
      directory = bool;
      return i + 1 - paramInt;
    }
  }
  
  public String toString()
  {
    return new String("SmbComNTCreateAndXResponse[" + super.toString() + ",oplockLevel=" + oplockLevel + ",fid=" + fid + ",createAction=0x" + Hexdump.toHexString(createAction, 4) + ",creationTime=" + new Date(creationTime) + ",lastAccessTime=" + new Date(lastAccessTime) + ",lastWriteTime=" + new Date(lastWriteTime) + ",changeTime=" + new Date(changeTime) + ",extFileAttributes=0x" + Hexdump.toHexString(extFileAttributes, 4) + ",allocationSize=" + allocationSize + ",endOfFile=" + endOfFile + ",fileType=" + fileType + ",deviceState=" + deviceState + ",directory=" + directory + "]");
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
 * Qualified Name:     jcifs.smb.SmbComNTCreateAndXResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */