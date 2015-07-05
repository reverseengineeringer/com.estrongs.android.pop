package jcifs.smb;

import java.util.Date;
import jcifs.Config;
import jcifs.util.Hexdump;

class SmbComOpenAndX
  extends AndXServerMessageBlock
{
  private static final int BATCH_LIMIT = Config.getInt("jcifs.smb.client.OpenAndX.ReadAndX", 1);
  private static final int DO_NOT_CACHE = 4096;
  private static final int FLAGS_REQUEST_BATCH_OPLOCK = 4;
  private static final int FLAGS_REQUEST_OPLOCK = 2;
  private static final int FLAGS_RETURN_ADDITIONAL_INFO = 1;
  private static final int OPEN_FN_CREATE = 16;
  private static final int OPEN_FN_FAIL_IF_EXISTS = 0;
  private static final int OPEN_FN_OPEN = 1;
  private static final int OPEN_FN_TRUNC = 2;
  private static final int SHARING_COMPATIBILITY = 0;
  private static final int SHARING_DENY_NONE = 64;
  private static final int SHARING_DENY_READ_EXECUTE = 48;
  private static final int SHARING_DENY_READ_WRITE_EXECUTE = 16;
  private static final int SHARING_DENY_WRITE = 32;
  private static final int WRITE_THROUGH = 16384;
  int allocationSize;
  int creationTime;
  int desiredAccess;
  int fileAttributes;
  int flags;
  int openFunction;
  int searchAttributes;
  
  SmbComOpenAndX(String paramString, int paramInt1, int paramInt2, ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    path = paramString;
    command = 45;
    desiredAccess = (paramInt1 & 0x3);
    if (desiredAccess == 3) {
      desiredAccess = 2;
    }
    desiredAccess |= 0x40;
    desiredAccess &= 0xFFFFFFFE;
    searchAttributes = 22;
    fileAttributes = 0;
    if ((paramInt2 & 0x40) == 64)
    {
      if ((paramInt2 & 0x10) == 16)
      {
        openFunction = 18;
        return;
      }
      openFunction = 2;
      return;
    }
    if ((paramInt2 & 0x10) == 16)
    {
      if ((paramInt2 & 0x20) == 32)
      {
        openFunction = 16;
        return;
      }
      openFunction = 17;
      return;
    }
    openFunction = 1;
  }
  
  int getBatchLimit(byte paramByte)
  {
    if (paramByte == 46) {
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
  
  public String toString()
  {
    return new String("SmbComOpenAndX[" + super.toString() + ",flags=0x" + Hexdump.toHexString(flags, 2) + ",desiredAccess=0x" + Hexdump.toHexString(desiredAccess, 4) + ",searchAttributes=0x" + Hexdump.toHexString(searchAttributes, 4) + ",fileAttributes=0x" + Hexdump.toHexString(fileAttributes, 4) + ",creationTime=" + new Date(creationTime) + ",openFunction=0x" + Hexdump.toHexString(openFunction, 2) + ",allocationSize=" + allocationSize + ",fileName=" + path + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (useUnicode)
    {
      i = paramInt + 1;
      paramArrayOfByte[paramInt] = 0;
    }
    for (;;)
    {
      return i + writeString(path, paramArrayOfByte, i) - paramInt;
      i = paramInt;
    }
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(flags, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(desiredAccess, paramArrayOfByte, i);
    i += 2;
    writeInt2(searchAttributes, paramArrayOfByte, i);
    i += 2;
    writeInt2(fileAttributes, paramArrayOfByte, i);
    i += 2;
    creationTime = 0;
    writeInt4(creationTime, paramArrayOfByte, i);
    i += 4;
    writeInt2(openFunction, paramArrayOfByte, i);
    i += 2;
    writeInt4(allocationSize, paramArrayOfByte, i);
    i += 4;
    int j = 0;
    while (j < 8)
    {
      paramArrayOfByte[i] = 0;
      j += 1;
      i += 1;
    }
    return i - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComOpenAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */