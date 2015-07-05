package jcifs.smb;

abstract class SmbComNtTransaction
  extends SmbComTransaction
{
  private static final int NTT_PRIMARY_SETUP_OFFSET = 69;
  private static final int NTT_SECONDARY_PARAMETER_OFFSET = 51;
  static final int NT_TRANSACT_QUERY_SECURITY_DESC = 6;
  int function;
  
  SmbComNtTransaction()
  {
    primarySetupOffset = 69;
    secondaryParameterOffset = 51;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    int j;
    if (command != -95)
    {
      i = paramInt + 1;
      paramArrayOfByte[paramInt] = maxSetupCount;
      j = i + 1;
      paramArrayOfByte[i] = 0;
      i = j + 1;
      paramArrayOfByte[j] = 0;
      writeInt4(totalParameterCount, paramArrayOfByte, i);
      i += 4;
      writeInt4(totalDataCount, paramArrayOfByte, i);
      j = i + 4;
      i = j;
      if (command != -95)
      {
        writeInt4(maxParameterCount, paramArrayOfByte, j);
        i = j + 4;
        writeInt4(maxDataCount, paramArrayOfByte, i);
        i += 4;
      }
      writeInt4(parameterCount, paramArrayOfByte, i);
      j = i + 4;
      if (parameterCount != 0) {
        break label262;
      }
      i = 0;
      label134:
      writeInt4(i, paramArrayOfByte, j);
      j += 4;
      i = j;
      if (command == -95)
      {
        writeInt4(parameterDisplacement, paramArrayOfByte, j);
        i = j + 4;
      }
      writeInt4(dataCount, paramArrayOfByte, i);
      j = i + 4;
      if (dataCount != 0) {
        break label270;
      }
      i = 0;
      label200:
      writeInt4(i, paramArrayOfByte, j);
      i = j + 4;
      if (command != -95) {
        break label278;
      }
      writeInt4(dataDisplacement, paramArrayOfByte, i);
      j = i + 4;
      i = j + 1;
      paramArrayOfByte[j] = 0;
    }
    for (;;)
    {
      return i - paramInt;
      i = paramInt + 1;
      paramArrayOfByte[paramInt] = 0;
      break;
      label262:
      i = parameterOffset;
      break label134;
      label270:
      i = dataOffset;
      break label200;
      label278:
      j = i + 1;
      paramArrayOfByte[i] = ((byte)setupCount);
      writeInt2(function, paramArrayOfByte, j);
      i = j + 2;
      i += writeSetupWireFormat(paramArrayOfByte, i);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComNtTransaction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */