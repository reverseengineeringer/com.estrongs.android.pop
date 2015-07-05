package jcifs.smb;

import java.io.UnsupportedEncodingException;
import jcifs.util.LogStream;

class Trans2FindFirst2Response
  extends SmbComTransactionResponse
{
  static final int SMB_FILE_BOTH_DIRECTORY_INFO = 260;
  static final int SMB_FILE_NAMES_INFO = 259;
  static final int SMB_FIND_FILE_DIRECTORY_INFO = 257;
  static final int SMB_FIND_FILE_FULL_DIRECTORY_INFO = 258;
  static final int SMB_INFO_QUERY_EAS_FROM_LIST = 3;
  static final int SMB_INFO_QUERY_EA_SIZE = 2;
  static final int SMB_INFO_STANDARD = 1;
  int eaErrorOffset;
  boolean isEndOfSearch;
  String lastName;
  int lastNameBufferIndex;
  int lastNameOffset;
  int resumeKey;
  int sid;
  
  Trans2FindFirst2Response()
  {
    command = 50;
    subCommand = 1;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    lastNameBufferIndex = (lastNameOffset + paramInt1);
    results = new Trans2FindFirst2Response.SmbFindFileBothDirectoryInfo[numEntries];
    int i = 0;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (paramInt1 < numEntries)
    {
      FileEntry[] arrayOfFileEntry = results;
      Trans2FindFirst2Response.SmbFindFileBothDirectoryInfo localSmbFindFileBothDirectoryInfo = new Trans2FindFirst2Response.SmbFindFileBothDirectoryInfo(this);
      arrayOfFileEntry[paramInt1] = localSmbFindFileBothDirectoryInfo;
      nextEntryOffset = readInt4(paramArrayOfByte, paramInt2);
      fileIndex = readInt4(paramArrayOfByte, paramInt2 + 4);
      creationTime = readTime(paramArrayOfByte, paramInt2 + 8);
      lastWriteTime = readTime(paramArrayOfByte, paramInt2 + 24);
      endOfFile = readInt8(paramArrayOfByte, paramInt2 + 40);
      extFileAttributes = readInt4(paramArrayOfByte, paramInt2 + 56);
      fileNameLength = readInt4(paramArrayOfByte, paramInt2 + 60);
      filename = readString(paramArrayOfByte, paramInt2 + 94, fileNameLength);
      if ((lastNameBufferIndex >= paramInt2) && ((nextEntryOffset == 0) || (lastNameBufferIndex < nextEntryOffset + paramInt2)))
      {
        lastName = filename;
        resumeKey = fileIndex;
      }
      paramInt2 += nextEntryOffset;
      paramInt1 += 1;
    }
    return dataCount;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (subCommand == 1) {
      sid = readInt2(paramArrayOfByte, paramInt1);
    }
    for (paramInt2 = paramInt1 + 2;; paramInt2 = paramInt1)
    {
      numEntries = readInt2(paramArrayOfByte, paramInt2);
      paramInt2 += 2;
      if ((paramArrayOfByte[paramInt2] & 0x1) == 1) {}
      for (boolean bool = true;; bool = false)
      {
        isEndOfSearch = bool;
        paramInt2 += 2;
        eaErrorOffset = readInt2(paramArrayOfByte, paramInt2);
        paramInt2 += 2;
        lastNameOffset = readInt2(paramArrayOfByte, paramInt2);
        return paramInt2 + 2 - paramInt1;
      }
    }
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  String readString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        if (!useUnicode) {
          break label59;
        }
        return new String(paramArrayOfByte, paramInt1, paramInt2, "UTF-16LE");
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        LogStream localLogStream = log;
        if (LogStream.level <= 1) {
          continue;
        }
        paramArrayOfByte.printStackTrace(log);
        return null;
      }
      paramArrayOfByte = new String(paramArrayOfByte, paramInt1, i, ServerMessageBlock.OEM_ENCODING);
      return paramArrayOfByte;
      label59:
      int i = paramInt2;
      if (paramInt2 > 0)
      {
        i = paramInt2;
        if (paramArrayOfByte[(paramInt1 + paramInt2 - 1)] == 0) {
          i = paramInt2 - 1;
        }
      }
    }
  }
  
  public String toString()
  {
    if (subCommand == 1) {}
    for (String str = "Trans2FindFirst2Response[";; str = "Trans2FindNext2Response[") {
      return new String(str + super.toString() + ",sid=" + sid + ",searchCount=" + numEntries + ",isEndOfSearch=" + isEndOfSearch + ",eaErrorOffset=" + eaErrorOffset + ",lastNameOffset=" + lastNameOffset + ",lastName=" + lastName + "]");
    }
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2FindFirst2Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */