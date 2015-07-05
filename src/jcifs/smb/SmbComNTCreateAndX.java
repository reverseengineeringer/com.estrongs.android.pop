package jcifs.smb;

import jcifs.util.Hexdump;

class SmbComNTCreateAndX
  extends AndXServerMessageBlock
{
  static final int FILE_CREATE = 2;
  static final int FILE_OPEN = 1;
  static final int FILE_OPEN_IF = 3;
  static final int FILE_OVERWRITE = 4;
  static final int FILE_OVERWRITE_IF = 5;
  static final int FILE_SEQUENTIAL_ONLY = 4;
  static final int FILE_SUPERSEDE = 0;
  static final int FILE_SYNCHRONOUS_IO_ALERT = 16;
  static final int FILE_SYNCHRONOUS_IO_NONALERT = 32;
  static final int FILE_WRITE_THROUGH = 2;
  static final int SECURITY_CONTEXT_TRACKING = 1;
  static final int SECURITY_EFFECTIVE_ONLY = 2;
  private long allocationSize;
  private int createDisposition;
  private int createOptions;
  int desiredAccess;
  private int extFileAttributes;
  int flags0;
  private int impersonationLevel;
  private int namelen_index;
  private int rootDirectoryFid;
  private byte securityFlags;
  private int shareAccess;
  
  SmbComNTCreateAndX(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    path = paramString;
    command = -94;
    desiredAccess = paramInt2;
    desiredAccess |= 0x89;
    extFileAttributes = paramInt4;
    shareAccess = paramInt3;
    if ((paramInt1 & 0x40) == 64) {
      if ((paramInt1 & 0x10) == 16)
      {
        createDisposition = 5;
        if ((paramInt5 & 0x1) != 0) {
          break label146;
        }
      }
    }
    label146:
    for (createOptions = (paramInt5 | 0x40);; createOptions = paramInt5)
    {
      impersonationLevel = 2;
      securityFlags = 3;
      return;
      createDisposition = 4;
      break;
      if ((paramInt1 & 0x10) == 16)
      {
        if ((paramInt1 & 0x20) == 32)
        {
          createDisposition = 2;
          break;
        }
        createDisposition = 3;
        break;
      }
      createDisposition = 1;
      break;
    }
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
    return new String("SmbComNTCreateAndX[" + super.toString() + ",flags=0x" + Hexdump.toHexString(flags0, 2) + ",rootDirectoryFid=" + rootDirectoryFid + ",desiredAccess=0x" + Hexdump.toHexString(desiredAccess, 4) + ",allocationSize=" + allocationSize + ",extFileAttributes=0x" + Hexdump.toHexString(extFileAttributes, 4) + ",shareAccess=0x" + Hexdump.toHexString(shareAccess, 4) + ",createDisposition=0x" + Hexdump.toHexString(createDisposition, 4) + ",createOptions=0x" + Hexdump.toHexString(createOptions, 8) + ",impersonationLevel=0x" + Hexdump.toHexString(impersonationLevel, 4) + ",securityFlags=0x" + Hexdump.toHexString(securityFlags, 2) + ",name=" + path + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = writeString(path, paramArrayOfByte, paramInt);
    if (useUnicode) {}
    for (paramInt = path.length() * 2;; paramInt = i)
    {
      writeInt2(paramInt, paramArrayOfByte, namelen_index);
      return i;
    }
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 0;
    namelen_index = i;
    i += 2;
    writeInt4(flags0, paramArrayOfByte, i);
    i += 4;
    writeInt4(rootDirectoryFid, paramArrayOfByte, i);
    i += 4;
    writeInt4(desiredAccess, paramArrayOfByte, i);
    i += 4;
    writeInt8(allocationSize, paramArrayOfByte, i);
    i += 8;
    writeInt4(extFileAttributes, paramArrayOfByte, i);
    i += 4;
    writeInt4(shareAccess, paramArrayOfByte, i);
    i += 4;
    writeInt4(createDisposition, paramArrayOfByte, i);
    i += 4;
    writeInt4(createOptions, paramArrayOfByte, i);
    i += 4;
    writeInt4(impersonationLevel, paramArrayOfByte, i);
    i += 4;
    paramArrayOfByte[i] = securityFlags;
    return i + 1 - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComNTCreateAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */