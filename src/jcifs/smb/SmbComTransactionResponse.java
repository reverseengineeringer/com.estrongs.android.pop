package jcifs.smb;

import java.util.Enumeration;
import jcifs.util.LogStream;

abstract class SmbComTransactionResponse
  extends ServerMessageBlock
  implements Enumeration
{
  private static final int DISCONNECT_TID = 1;
  private static final int ONE_WAY_TRANSACTION = 2;
  private static final int SETUP_OFFSET = 61;
  protected int bufDataStart;
  protected int bufParameterStart;
  int dataCount;
  protected int dataDisplacement;
  private boolean dataDone;
  protected int dataOffset;
  boolean hasMore = true;
  boolean isPrimary = true;
  int numEntries;
  private int pad;
  private int pad1;
  protected int parameterCount;
  protected int parameterDisplacement;
  protected int parameterOffset;
  private boolean parametersDone;
  FileEntry[] results;
  protected int setupCount;
  int status;
  byte subCommand;
  protected int totalDataCount;
  protected int totalParameterCount;
  byte[] txn_buf = null;
  
  public boolean hasMoreElements()
  {
    return (errorCode == 0) && (hasMore);
  }
  
  public Object nextElement()
  {
    if (isPrimary) {
      isPrimary = false;
    }
    return this;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    pad1 = 0;
    pad = 0;
    int i = paramInt;
    if (parameterCount > 0)
    {
      i = parameterOffset - (paramInt - headerStart);
      pad = i;
      paramInt = i + paramInt;
      System.arraycopy(paramArrayOfByte, paramInt, txn_buf, bufParameterStart + parameterDisplacement, parameterCount);
      i = paramInt + parameterCount;
    }
    if (dataCount > 0)
    {
      paramInt = dataOffset - (i - headerStart);
      pad1 = paramInt;
      paramInt += i;
      System.arraycopy(paramArrayOfByte, paramInt, txn_buf, bufDataStart + dataDisplacement, dataCount);
      paramInt = dataCount;
    }
    if ((!parametersDone) && (parameterDisplacement + parameterCount == totalParameterCount)) {
      parametersDone = true;
    }
    if ((!dataDone) && (dataDisplacement + dataCount == totalDataCount)) {
      dataDone = true;
    }
    if ((parametersDone) && (dataDone))
    {
      hasMore = false;
      readParametersWireFormat(txn_buf, bufParameterStart, totalParameterCount);
      readDataWireFormat(txn_buf, bufDataStart, totalDataCount);
    }
    return pad + parameterCount + pad1 + dataCount;
  }
  
  abstract int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    totalParameterCount = readInt2(paramArrayOfByte, paramInt);
    if (bufDataStart == 0) {
      bufDataStart = totalParameterCount;
    }
    int i = paramInt + 2;
    totalDataCount = readInt2(paramArrayOfByte, i);
    i += 4;
    parameterCount = readInt2(paramArrayOfByte, i);
    i += 2;
    parameterOffset = readInt2(paramArrayOfByte, i);
    i += 2;
    parameterDisplacement = readInt2(paramArrayOfByte, i);
    i += 2;
    dataCount = readInt2(paramArrayOfByte, i);
    i += 2;
    dataOffset = readInt2(paramArrayOfByte, i);
    i += 2;
    dataDisplacement = readInt2(paramArrayOfByte, i);
    i += 2;
    setupCount = (paramArrayOfByte[i] & 0xFF);
    if (setupCount != 0)
    {
      paramArrayOfByte = log;
      if (LogStream.level > 2) {
        log.println("setupCount is not zero: " + setupCount);
      }
    }
    return i + 2 - paramInt;
  }
  
  abstract int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  abstract int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  void reset()
  {
    super.reset();
    bufDataStart = 0;
    hasMore = true;
    isPrimary = true;
    dataDone = false;
    parametersDone = false;
  }
  
  public String toString()
  {
    return new String(super.toString() + ",totalParameterCount=" + totalParameterCount + ",totalDataCount=" + totalDataCount + ",parameterCount=" + parameterCount + ",parameterOffset=" + parameterOffset + ",parameterDisplacement=" + parameterDisplacement + ",dataCount=" + dataCount + ",dataOffset=" + dataOffset + ",dataDisplacement=" + dataDisplacement + ",setupCount=" + setupCount + ",pad=" + pad + ",pad1=" + pad1);
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  abstract int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  abstract int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  abstract int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt);
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComTransactionResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */