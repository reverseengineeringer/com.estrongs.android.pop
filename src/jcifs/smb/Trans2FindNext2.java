package jcifs.smb;

import jcifs.util.Hexdump;

class Trans2FindNext2
  extends SmbComTransaction
{
  private String filename;
  private int flags;
  private int informationLevel;
  private int resumeKey;
  private int sid;
  
  Trans2FindNext2(int paramInt1, int paramInt2, String paramString)
  {
    sid = paramInt1;
    resumeKey = paramInt2;
    filename = paramString;
    command = 50;
    subCommand = 2;
    informationLevel = 260;
    flags = 0;
    maxParameterCount = 8;
    maxDataCount = Trans2FindFirst2.LIST_SIZE;
    maxSetupCount = 0;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  void reset(int paramInt, String paramString)
  {
    super.reset();
    resumeKey = paramInt;
    filename = paramString;
    flags2 = 0;
  }
  
  public String toString()
  {
    return new String("Trans2FindNext2[" + super.toString() + ",sid=" + sid + ",searchCount=" + Trans2FindFirst2.LIST_SIZE + ",informationLevel=0x" + Hexdump.toHexString(informationLevel, 3) + ",resumeKey=0x" + Hexdump.toHexString(resumeKey, 4) + ",flags=0x" + Hexdump.toHexString(flags, 2) + ",filename=" + filename + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(sid, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(Trans2FindFirst2.LIST_COUNT, paramArrayOfByte, i);
    i += 2;
    writeInt2(informationLevel, paramArrayOfByte, i);
    i += 2;
    writeInt4(resumeKey, paramArrayOfByte, i);
    i += 4;
    writeInt2(flags, paramArrayOfByte, i);
    i += 2;
    return i + writeString(filename, paramArrayOfByte, i) - paramInt;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = subCommand;
    paramArrayOfByte[i] = 0;
    return 2;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2FindNext2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */