package jcifs.netbios;

import java.net.InetAddress;
import jcifs.util.Hexdump;

abstract class NameServicePacket
{
  static final int A = 1;
  static final int ACT_ERR = 6;
  static final int ADDITIONAL_OFFSET = 10;
  static final int ANSWER_OFFSET = 6;
  static final int AUTHORITY_OFFSET = 8;
  static final int CFT_ERR = 7;
  static final int FMT_ERR = 1;
  static final int HEADER_LENGTH = 12;
  static final int IMP_ERR = 4;
  static final int IN = 1;
  static final int NB = 32;
  static final int NBSTAT = 33;
  static final int NBSTAT_IN = 2162689;
  static final int NB_IN = 2097153;
  static final int NS = 2;
  static final int NULL = 10;
  static final int OPCODE_OFFSET = 2;
  static final int QUERY = 0;
  static final int QUESTION_OFFSET = 4;
  static final int RFS_ERR = 5;
  static final int SRV_ERR = 2;
  static final int WACK = 7;
  int additionalCount;
  InetAddress addr;
  NbtAddress[] addrEntry;
  int addrIndex;
  int answerCount;
  int authorityCount;
  boolean isAuthAnswer;
  boolean isBroadcast = true;
  boolean isRecurAvailable;
  boolean isRecurDesired = true;
  boolean isResponse;
  boolean isTruncated;
  int nameTrnId;
  int opCode;
  int questionClass = 1;
  int questionCount = 1;
  Name questionName;
  int questionType;
  int rDataLength;
  boolean received;
  int recordClass;
  Name recordName;
  int recordType;
  int resultCode;
  int ttl;
  
  static int readInt2(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
  
  static int readInt4(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }
  
  static int readNameTrnId(byte[] paramArrayOfByte, int paramInt)
  {
    return readInt2(paramArrayOfByte, paramInt);
  }
  
  static void writeInt2(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 & 0xFF));
  }
  
  static void writeInt4(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 24 & 0xFF));
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >> 16 & 0xFF));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 & 0xFF));
  }
  
  abstract int readBodyWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int readHeaderWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool2 = false;
    nameTrnId = readInt2(paramArrayOfByte, paramInt);
    if ((paramArrayOfByte[(paramInt + 2)] & 0x80) == 0)
    {
      bool1 = false;
      isResponse = bool1;
      opCode = ((paramArrayOfByte[(paramInt + 2)] & 0x78) >> 3);
      if ((paramArrayOfByte[(paramInt + 2)] & 0x4) != 0) {
        break label207;
      }
      bool1 = false;
      label57:
      isAuthAnswer = bool1;
      if ((paramArrayOfByte[(paramInt + 2)] & 0x2) != 0) {
        break label212;
      }
      bool1 = false;
      label74:
      isTruncated = bool1;
      if ((paramArrayOfByte[(paramInt + 2)] & 0x1) != 0) {
        break label217;
      }
      bool1 = false;
      label91:
      isRecurDesired = bool1;
      if ((paramArrayOfByte[(paramInt + 2 + 1)] & 0x80) != 0) {
        break label222;
      }
      bool1 = false;
      label112:
      isRecurAvailable = bool1;
      if ((paramArrayOfByte[(paramInt + 2 + 1)] & 0x10) != 0) {
        break label227;
      }
    }
    label207:
    label212:
    label217:
    label222:
    label227:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      isBroadcast = bool1;
      resultCode = (paramArrayOfByte[(paramInt + 2 + 1)] & 0xF);
      questionCount = readInt2(paramArrayOfByte, paramInt + 4);
      answerCount = readInt2(paramArrayOfByte, paramInt + 6);
      authorityCount = readInt2(paramArrayOfByte, paramInt + 8);
      additionalCount = readInt2(paramArrayOfByte, paramInt + 10);
      return 12;
      bool1 = true;
      break;
      bool1 = true;
      break label57;
      bool1 = true;
      break label74;
      bool1 = true;
      break label91;
      bool1 = true;
      break label112;
    }
  }
  
  int readQuestionSectionWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = questionName.readWireFormat(paramArrayOfByte, paramInt) + paramInt;
    questionType = readInt2(paramArrayOfByte, i);
    i += 2;
    questionClass = readInt2(paramArrayOfByte, i);
    return i + 2 - paramInt;
  }
  
  abstract int readRDataWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int readResourceRecordWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte[paramInt] & 0xC0) == 192) {
      recordName = questionName;
    }
    for (int i = paramInt + 2;; i = recordName.readWireFormat(paramArrayOfByte, paramInt) + paramInt)
    {
      recordType = readInt2(paramArrayOfByte, i);
      i += 2;
      recordClass = readInt2(paramArrayOfByte, i);
      i += 2;
      ttl = readInt4(paramArrayOfByte, i);
      i += 4;
      rDataLength = readInt2(paramArrayOfByte, i);
      int j = i + 2;
      addrEntry = new NbtAddress[rDataLength / 6];
      int k = rDataLength;
      addrIndex = 0;
      i = j;
      while (i < k + j)
      {
        i += readRDataWireFormat(paramArrayOfByte, i);
        addrIndex += 1;
      }
    }
    return i - paramInt;
  }
  
  int readWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = readHeaderWireFormat(paramArrayOfByte, paramInt) + paramInt;
    return i + readBodyWireFormat(paramArrayOfByte, i) - paramInt;
  }
  
  public String toString()
  {
    Object localObject1;
    label115:
    Object localObject2;
    switch (opCode)
    {
    default: 
      localObject1 = Integer.toString(opCode);
      switch (resultCode)
      {
      case 3: 
      default: 
        new StringBuilder().append("0x").append(Hexdump.toHexString(resultCode, 1)).toString();
        switch (questionType)
        {
        default: 
          localObject2 = "0x" + Hexdump.toHexString(questionType, 4);
          label167:
          switch (recordType)
          {
          default: 
            str = "0x" + Hexdump.toHexString(recordType, 4);
            label247:
            localObject2 = new StringBuilder().append("nameTrnId=").append(nameTrnId).append(",isResponse=").append(isResponse).append(",opCode=").append((String)localObject1).append(",isAuthAnswer=").append(isAuthAnswer).append(",isTruncated=").append(isTruncated).append(",isRecurAvailable=").append(isRecurAvailable).append(",isRecurDesired=").append(isRecurDesired).append(",isBroadcast=").append(isBroadcast).append(",resultCode=").append(resultCode).append(",questionCount=").append(questionCount).append(",answerCount=").append(answerCount).append(",authorityCount=").append(authorityCount).append(",additionalCount=").append(additionalCount).append(",questionName=").append(questionName).append(",questionType=").append((String)localObject2).append(",questionClass=");
            if (questionClass == 1)
            {
              localObject1 = "IN";
              label445:
              localObject1 = ((StringBuilder)localObject2).append((String)localObject1).append(",recordName=").append(recordName).append(",recordType=").append(str).append(",recordClass=");
              if (recordClass != 1) {
                break label630;
              }
            }
            break;
          }
          break;
        }
        break;
      }
      break;
    }
    label630:
    for (String str = "IN";; str = "0x" + Hexdump.toHexString(recordClass, 4))
    {
      return new String(str + ",ttl=" + ttl + ",rDataLength=" + rDataLength);
      localObject1 = "QUERY";
      break;
      localObject1 = "WACK";
      break;
      break label115;
      break label115;
      break label115;
      break label115;
      break label115;
      break label115;
      localObject2 = "NB";
      break label167;
      localObject2 = "NBSTAT";
      break label167;
      str = "A";
      break label247;
      str = "NS";
      break label247;
      str = "NULL";
      break label247;
      str = "NB";
      break label247;
      str = "NBSTAT";
      break label247;
      localObject1 = "0x" + Hexdump.toHexString(questionClass, 4);
      break label445;
    }
  }
  
  abstract int writeBodyWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeHeaderWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i1 = 128;
    int n = 0;
    writeInt2(nameTrnId, paramArrayOfByte, paramInt);
    int j;
    label44:
    int k;
    label54:
    int m;
    if (isResponse)
    {
      i = 128;
      int i2 = opCode;
      if (!isAuthAnswer) {
        break label188;
      }
      j = 4;
      if (!isTruncated) {
        break label194;
      }
      k = 2;
      if (!isRecurDesired) {
        break label200;
      }
      m = 1;
      label64:
      paramArrayOfByte[(paramInt + 2)] = ((byte)(m + ((i2 << 3 & 0x78) + i + j + k)));
      if (!isRecurAvailable) {
        break label206;
      }
    }
    label188:
    label194:
    label200:
    label206:
    for (int i = i1;; i = 0)
    {
      j = n;
      if (isBroadcast) {
        j = 16;
      }
      paramArrayOfByte[(paramInt + 2 + 1)] = ((byte)(i + j + (resultCode & 0xF)));
      writeInt2(questionCount, paramArrayOfByte, paramInt + 4);
      writeInt2(answerCount, paramArrayOfByte, paramInt + 6);
      writeInt2(authorityCount, paramArrayOfByte, paramInt + 8);
      writeInt2(additionalCount, paramArrayOfByte, paramInt + 10);
      return 12;
      i = 0;
      break;
      j = 0;
      break label44;
      k = 0;
      break label54;
      m = 0;
      break label64;
    }
  }
  
  int writeQuestionSectionWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = questionName.writeWireFormat(paramArrayOfByte, paramInt) + paramInt;
    writeInt2(questionType, paramArrayOfByte, i);
    i += 2;
    writeInt2(questionClass, paramArrayOfByte, i);
    return i + 2 - paramInt;
  }
  
  abstract int writeRDataWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeResourceRecordWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (recordName == questionName)
    {
      int j = paramInt + 1;
      paramArrayOfByte[paramInt] = -64;
      i = j + 1;
      paramArrayOfByte[j] = 12;
    }
    for (;;)
    {
      writeInt2(recordType, paramArrayOfByte, i);
      i += 2;
      writeInt2(recordClass, paramArrayOfByte, i);
      i += 2;
      writeInt4(ttl, paramArrayOfByte, i);
      i += 4;
      rDataLength = writeRDataWireFormat(paramArrayOfByte, i + 2);
      writeInt2(rDataLength, paramArrayOfByte, i);
      return i + (rDataLength + 2) - paramInt;
      i = recordName.writeWireFormat(paramArrayOfByte, paramInt) + paramInt;
    }
  }
  
  int writeWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = writeHeaderWireFormat(paramArrayOfByte, paramInt) + paramInt;
    return i + writeBodyWireFormat(paramArrayOfByte, i) - paramInt;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NameServicePacket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */