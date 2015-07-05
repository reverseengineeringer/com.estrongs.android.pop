package jcifs.smb;

import java.util.Enumeration;
import jcifs.Config;
import jcifs.util.Hexdump;

abstract class SmbComTransaction
  extends ServerMessageBlock
  implements Enumeration
{
  private static final int DEFAULT_MAX_DATA_COUNT = Config.getInt("jcifs.smb.client.transaction_buf_size", 65535) - 512;
  private static final int DISCONNECT_TID = 1;
  static final int NET_SERVER_ENUM2 = 104;
  static final int NET_SERVER_ENUM3 = 215;
  static final int NET_SHARE_ENUM = 0;
  private static final int ONE_WAY_TRANSACTION = 2;
  private static final int PADDING_SIZE = 2;
  private static final int PRIMARY_SETUP_OFFSET = 61;
  private static final int SECONDARY_PARAMETER_OFFSET = 51;
  static final byte TRANS2_FIND_FIRST2 = 1;
  static final byte TRANS2_FIND_NEXT2 = 2;
  static final byte TRANS2_GET_DFS_REFERRAL = 16;
  static final byte TRANS2_QUERY_FS_INFORMATION = 3;
  static final byte TRANS2_QUERY_PATH_INFORMATION = 5;
  static final byte TRANS2_SET_FILE_INFORMATION = 8;
  static final int TRANSACTION_BUF_SIZE = 65535;
  static final byte TRANS_CALL_NAMED_PIPE = 84;
  static final byte TRANS_PEEK_NAMED_PIPE = 35;
  static final byte TRANS_TRANSACT_NAMED_PIPE = 38;
  static final byte TRANS_WAIT_NAMED_PIPE = 83;
  private int bufDataOffset;
  private int bufParameterOffset;
  protected int dataCount;
  protected int dataDisplacement;
  protected int dataOffset;
  private int fid;
  private int flags = 0;
  private boolean hasMore = true;
  private boolean isPrimary = true;
  int maxBufferSize;
  int maxDataCount = DEFAULT_MAX_DATA_COUNT;
  int maxParameterCount = 1024;
  byte maxSetupCount;
  String name = "";
  private int pad = 0;
  private int pad1 = 0;
  protected int parameterCount;
  protected int parameterDisplacement;
  protected int parameterOffset;
  protected int primarySetupOffset = 61;
  protected int secondaryParameterOffset = 51;
  int setupCount = 1;
  byte subCommand;
  int timeout = 0;
  int totalDataCount;
  int totalParameterCount;
  byte[] txn_buf;
  
  public boolean hasMoreElements()
  {
    return hasMore;
  }
  
  public Object nextElement()
  {
    label94:
    int j;
    int k;
    if (isPrimary)
    {
      isPrimary = false;
      parameterOffset = (primarySetupOffset + setupCount * 2 + 2);
      if (command != -96)
      {
        if ((command == 37) && (!isResponse())) {
          parameterOffset += stringWireLength(name, parameterOffset);
        }
        pad = (parameterOffset % 2);
        if (pad != 0) {
          break label304;
        }
        i = 0;
        pad = i;
        parameterOffset += pad;
        totalParameterCount = writeParametersWireFormat(txn_buf, bufParameterOffset);
        bufDataOffset = totalParameterCount;
        j = maxBufferSize - parameterOffset;
        parameterCount = Math.min(totalParameterCount, j);
        k = parameterCount;
        dataOffset = (parameterOffset + parameterCount);
        pad1 = (dataOffset % 2);
        if (pad1 != 0) {
          break label314;
        }
      }
      label304:
      label314:
      for (i = 0;; i = 2 - pad1)
      {
        pad1 = i;
        dataOffset += pad1;
        totalDataCount = writeDataWireFormat(txn_buf, bufDataOffset);
        dataCount = Math.min(totalDataCount, j - k);
        if ((parameterDisplacement + parameterCount >= totalParameterCount) && (dataDisplacement + dataCount >= totalDataCount)) {
          hasMore = false;
        }
        return this;
        if (command != -96) {
          break;
        }
        parameterOffset += 2;
        break;
        i = 2 - pad;
        break label94;
      }
    }
    if (command != -96)
    {
      command = 38;
      label339:
      parameterOffset = 51;
      if (totalParameterCount - parameterDisplacement > 0)
      {
        pad = (parameterOffset % 2);
        if (pad != 0) {
          break label545;
        }
        i = 0;
        label376:
        pad = i;
        parameterOffset += pad;
      }
      parameterDisplacement += parameterCount;
      j = maxBufferSize - parameterOffset - pad;
      parameterCount = Math.min(totalParameterCount - parameterDisplacement, j);
      k = parameterCount;
      dataOffset = (parameterOffset + parameterCount);
      pad1 = (dataOffset % 2);
      if (pad1 != 0) {
        break label555;
      }
    }
    label545:
    label555:
    for (int i = 0;; i = 2 - pad1)
    {
      pad1 = i;
      dataOffset += pad1;
      dataDisplacement += dataCount;
      i = pad1;
      dataCount = Math.min(totalDataCount - dataDisplacement, j - k - i);
      break;
      command = -95;
      break label339;
      i = 2 - pad;
      break label376;
    }
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  abstract int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  abstract int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  abstract int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  void reset()
  {
    super.reset();
    hasMore = true;
    isPrimary = true;
  }
  
  void reset(int paramInt, String paramString)
  {
    reset();
  }
  
  public String toString()
  {
    return new String(super.toString() + ",totalParameterCount=" + totalParameterCount + ",totalDataCount=" + totalDataCount + ",maxParameterCount=" + maxParameterCount + ",maxDataCount=" + maxDataCount + ",maxSetupCount=" + maxSetupCount + ",flags=0x" + Hexdump.toHexString(flags, 2) + ",timeout=" + timeout + ",parameterCount=" + parameterCount + ",parameterOffset=" + parameterOffset + ",parameterDisplacement=" + parameterDisplacement + ",dataCount=" + dataCount + ",dataOffset=" + dataOffset + ",dataDisplacement=" + dataDisplacement + ",setupCount=" + setupCount + ",pad=" + pad + ",pad1=" + pad1);
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int k = pad;
    if ((command == 37) && (!isResponse())) {}
    for (int j = writeString(name, paramArrayOfByte, paramInt) + paramInt;; j = paramInt)
    {
      int i = j;
      if (parameterCount > 0)
      {
        i = k;
        while (i > 0)
        {
          paramArrayOfByte[j] = 0;
          j += 1;
          i -= 1;
        }
        System.arraycopy(txn_buf, bufParameterOffset, paramArrayOfByte, j, parameterCount);
        i = parameterCount + j;
      }
      j = i;
      if (dataCount > 0)
      {
        j = pad1;
        while (j > 0)
        {
          paramArrayOfByte[i] = 0;
          i += 1;
          j -= 1;
        }
        System.arraycopy(txn_buf, bufDataOffset, paramArrayOfByte, i, dataCount);
        bufDataOffset += dataCount;
        j = dataCount + i;
      }
      return j - paramInt;
    }
  }
  
  abstract int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(totalParameterCount, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(totalDataCount, paramArrayOfByte, i);
    int j = i + 2;
    i = j;
    if (command != 38)
    {
      writeInt2(maxParameterCount, paramArrayOfByte, j);
      i = j + 2;
      writeInt2(maxDataCount, paramArrayOfByte, i);
      j = i + 2;
      i = j + 1;
      paramArrayOfByte[j] = maxSetupCount;
      j = i + 1;
      paramArrayOfByte[i] = 0;
      writeInt2(flags, paramArrayOfByte, j);
      i = j + 2;
      writeInt4(timeout, paramArrayOfByte, i);
      i += 4;
      j = i + 1;
      paramArrayOfByte[i] = 0;
      i = j + 1;
      paramArrayOfByte[j] = 0;
    }
    writeInt2(parameterCount, paramArrayOfByte, i);
    i += 2;
    writeInt2(parameterOffset, paramArrayOfByte, i);
    j = i + 2;
    i = j;
    if (command == 38)
    {
      writeInt2(parameterDisplacement, paramArrayOfByte, j);
      i = j + 2;
    }
    writeInt2(dataCount, paramArrayOfByte, i);
    j = i + 2;
    if (dataCount == 0)
    {
      i = 0;
      writeInt2(i, paramArrayOfByte, j);
      j += 2;
      if (command != 38) {
        break label275;
      }
      writeInt2(dataDisplacement, paramArrayOfByte, j);
    }
    for (i = j + 2;; i = j + writeSetupWireFormat(paramArrayOfByte, j))
    {
      return i - paramInt;
      i = dataOffset;
      break;
      label275:
      i = j + 1;
      paramArrayOfByte[j] = ((byte)setupCount);
      j = i + 1;
      paramArrayOfByte[i] = 0;
    }
  }
  
  abstract int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  abstract int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt);
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComTransaction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */