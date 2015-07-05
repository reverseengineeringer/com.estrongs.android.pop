package jcifs.smb;

import jcifs.util.LogStream;

abstract class SmbComNtTransactionResponse
  extends SmbComTransactionResponse
{
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramInt + 1;
    paramArrayOfByte[paramInt] = 0;
    int i = j + 1;
    paramArrayOfByte[j] = 0;
    j = i + 1;
    paramArrayOfByte[i] = 0;
    totalParameterCount = readInt4(paramArrayOfByte, j);
    if (bufDataStart == 0) {
      bufDataStart = totalParameterCount;
    }
    i = j + 4;
    totalDataCount = readInt4(paramArrayOfByte, i);
    i += 4;
    parameterCount = readInt4(paramArrayOfByte, i);
    i += 4;
    parameterOffset = readInt4(paramArrayOfByte, i);
    i += 4;
    parameterDisplacement = readInt4(paramArrayOfByte, i);
    i += 4;
    dataCount = readInt4(paramArrayOfByte, i);
    i += 4;
    dataOffset = readInt4(paramArrayOfByte, i);
    i += 4;
    dataDisplacement = readInt4(paramArrayOfByte, i);
    i += 4;
    setupCount = (paramArrayOfByte[i] & 0xFF);
    if (setupCount != 0)
    {
      paramArrayOfByte = log;
      if (LogStream.level >= 3) {
        log.println("setupCount is not zero: " + setupCount);
      }
    }
    return i + 2 - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComNtTransactionResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */