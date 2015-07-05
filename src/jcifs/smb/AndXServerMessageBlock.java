package jcifs.smb;

import jcifs.util.Hexdump;

abstract class AndXServerMessageBlock
  extends ServerMessageBlock
{
  private static final int ANDX_COMMAND_OFFSET = 1;
  private static final int ANDX_OFFSET_OFFSET = 3;
  private static final int ANDX_RESERVED_OFFSET = 2;
  ServerMessageBlock andx = null;
  private byte andxCommand = -1;
  private int andxOffset = 0;
  
  AndXServerMessageBlock() {}
  
  AndXServerMessageBlock(ServerMessageBlock paramServerMessageBlock)
  {
    if (paramServerMessageBlock != null)
    {
      andx = paramServerMessageBlock;
      andxCommand = command;
    }
  }
  
  int decode(byte[] paramArrayOfByte, int paramInt)
  {
    headerStart = paramInt;
    int i = readHeaderWireFormat(paramArrayOfByte, paramInt) + paramInt;
    length = (i + readAndXWireFormat(paramArrayOfByte, i) - paramInt);
    return length;
  }
  
  int encode(byte[] paramArrayOfByte, int paramInt)
  {
    headerStart = paramInt;
    int i = writeHeaderWireFormat(paramArrayOfByte, paramInt) + paramInt;
    length = (i + writeAndXWireFormat(paramArrayOfByte, i) - paramInt);
    if (digest != null) {
      digest.sign(paramArrayOfByte, headerStart, length, this, response);
    }
    return length;
  }
  
  int getBatchLimit(byte paramByte)
  {
    return 0;
  }
  
  int readAndXWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramInt + 1;
    wordCount = paramArrayOfByte[paramInt];
    int i = j;
    if (wordCount != 0)
    {
      andxCommand = paramArrayOfByte[j];
      andxOffset = readInt2(paramArrayOfByte, j + 2);
      if (andxOffset == 0) {
        andxCommand = -1;
      }
      if (wordCount > 2)
      {
        readParameterWordsWireFormat(paramArrayOfByte, j + 4);
        if ((command == -94) && (isExtended)) {
          wordCount += 8;
        }
      }
      i = paramInt + 1 + wordCount * 2;
    }
    byteCount = readInt2(paramArrayOfByte, i);
    j = i + 2;
    i = j;
    if (byteCount != 0)
    {
      readBytesWireFormat(paramArrayOfByte, j);
      i = j + byteCount;
    }
    if ((errorCode != 0) || (andxCommand == -1))
    {
      andxCommand = -1;
      andx = null;
      return i - paramInt;
    }
    if (andx == null)
    {
      andxCommand = -1;
      throw new RuntimeException("no andx command supplied with response");
    }
    i = headerStart;
    i = andxOffset + i;
    andx.headerStart = headerStart;
    andx.command = andxCommand;
    andx.errorCode = errorCode;
    andx.flags = flags;
    andx.flags2 = flags2;
    andx.tid = tid;
    andx.pid = pid;
    andx.uid = uid;
    andx.mid = mid;
    andx.useUnicode = useUnicode;
    if ((andx instanceof AndXServerMessageBlock)) {
      i = ((AndXServerMessageBlock)andx).readAndXWireFormat(paramArrayOfByte, i) + i;
    }
    for (;;)
    {
      andx.received = true;
      break;
      j = i + 1;
      paramArrayOfByte[i] = ((byte)(andx.wordCount & 0xFF));
      i = j;
      if (andx.wordCount != 0)
      {
        i = j;
        if (andx.wordCount > 2) {
          i = j + andx.readParameterWordsWireFormat(paramArrayOfByte, j);
        }
      }
      andx.byteCount = readInt2(paramArrayOfByte, i);
      j = i + 2;
      i = j;
      if (andx.byteCount != 0)
      {
        andx.readBytesWireFormat(paramArrayOfByte, j);
        i = j + andx.byteCount;
      }
    }
  }
  
  public String toString()
  {
    return new String(super.toString() + ",andxCommand=0x" + Hexdump.toHexString(andxCommand, 2) + ",andxOffset=" + andxOffset);
  }
  
  int writeAndXWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    wordCount = writeParameterWordsWireFormat(paramArrayOfByte, paramInt + 3 + 2);
    wordCount += 4;
    int i = wordCount + 1 + paramInt;
    wordCount /= 2;
    paramArrayOfByte[paramInt] = ((byte)(wordCount & 0xFF));
    byteCount = writeBytesWireFormat(paramArrayOfByte, i + 2);
    int j = i + 1;
    paramArrayOfByte[i] = ((byte)(byteCount & 0xFF));
    paramArrayOfByte[j] = ((byte)(byteCount >> 8 & 0xFF));
    j = byteCount + (j + 1);
    if ((andx == null) || (!USE_BATCHING) || (batchLevel >= getBatchLimit(andx.command)))
    {
      andxCommand = -1;
      andx = null;
      paramArrayOfByte[(paramInt + 1)] = -1;
      paramArrayOfByte[(paramInt + 2)] = 0;
      paramArrayOfByte[(paramInt + 3)] = -34;
      paramArrayOfByte[(paramInt + 3 + 1)] = -34;
      return j - paramInt;
    }
    andx.batchLevel = (batchLevel + 1);
    paramArrayOfByte[(paramInt + 1)] = andxCommand;
    paramArrayOfByte[(paramInt + 2)] = 0;
    andxOffset = (j - headerStart);
    writeInt2(andxOffset, paramArrayOfByte, paramInt + 3);
    andx.useUnicode = useUnicode;
    if ((andx instanceof AndXServerMessageBlock)) {
      andx.uid = uid;
    }
    for (i = ((AndXServerMessageBlock)andx).writeAndXWireFormat(paramArrayOfByte, j) + j;; i = j + 1 + andx.byteCount)
    {
      return i - paramInt;
      andx.wordCount = andx.writeParameterWordsWireFormat(paramArrayOfByte, j);
      i = andx.wordCount + 1 + j;
      ServerMessageBlock localServerMessageBlock = andx;
      wordCount /= 2;
      paramArrayOfByte[j] = ((byte)(andx.wordCount & 0xFF));
      andx.byteCount = andx.writeBytesWireFormat(paramArrayOfByte, i + 2);
      j = i + 1;
      paramArrayOfByte[i] = ((byte)(andx.byteCount & 0xFF));
      paramArrayOfByte[j] = ((byte)(andx.byteCount >> 8 & 0xFF));
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.AndXServerMessageBlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */