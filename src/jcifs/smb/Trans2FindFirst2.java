package jcifs.smb;

import jcifs.Config;
import jcifs.util.Hexdump;

class Trans2FindFirst2
  extends SmbComTransaction
{
  private static final int DEFAULT_LIST_COUNT = 200;
  private static final int DEFAULT_LIST_SIZE = 65535;
  private static final int FLAGS_CLOSE_AFTER_THIS_REQUEST = 1;
  private static final int FLAGS_CLOSE_IF_END_REACHED = 2;
  private static final int FLAGS_FIND_WITH_BACKUP_INTENT = 16;
  private static final int FLAGS_RESUME_FROM_PREVIOUS_END = 8;
  private static final int FLAGS_RETURN_RESUME_KEYS = 4;
  static final int LIST_COUNT = Config.getInt("jcifs.smb.client.listCount", 200);
  static final int LIST_SIZE = Config.getInt("jcifs.smb.client.listSize", 65535);
  static final int SMB_FILE_BOTH_DIRECTORY_INFO = 260;
  static final int SMB_FILE_NAMES_INFO = 259;
  static final int SMB_FIND_FILE_DIRECTORY_INFO = 257;
  static final int SMB_FIND_FILE_FULL_DIRECTORY_INFO = 258;
  static final int SMB_INFO_QUERY_EAS_FROM_LIST = 3;
  static final int SMB_INFO_QUERY_EA_SIZE = 2;
  static final int SMB_INFO_STANDARD = 1;
  private int flags;
  private int informationLevel;
  private int searchAttributes;
  private int searchStorageType = 0;
  private String wildcard;
  
  Trans2FindFirst2(String paramString1, String paramString2, int paramInt)
  {
    if (paramString1.equals("\\")) {}
    for (path = paramString1;; path = (paramString1 + "\\"))
    {
      wildcard = paramString2;
      searchAttributes = (paramInt & 0x37);
      command = 50;
      subCommand = 1;
      flags = 0;
      informationLevel = 260;
      totalDataCount = 0;
      maxParameterCount = 10;
      maxDataCount = LIST_SIZE;
      maxSetupCount = 0;
      return;
    }
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
  
  public String toString()
  {
    return new String("Trans2FindFirst2[" + super.toString() + ",searchAttributes=0x" + Hexdump.toHexString(searchAttributes, 2) + ",searchCount=" + LIST_COUNT + ",flags=0x" + Hexdump.toHexString(flags, 2) + ",informationLevel=0x" + Hexdump.toHexString(informationLevel, 3) + ",searchStorageType=" + searchStorageType + ",filename=" + path + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(searchAttributes, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(LIST_COUNT, paramArrayOfByte, i);
    i += 2;
    writeInt2(flags, paramArrayOfByte, i);
    i += 2;
    writeInt2(informationLevel, paramArrayOfByte, i);
    i += 2;
    writeInt4(searchStorageType, paramArrayOfByte, i);
    i += 4;
    return i + writeString(path + wildcard, paramArrayOfByte, i) - paramInt;
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
 * Qualified Name:     jcifs.smb.Trans2FindFirst2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */