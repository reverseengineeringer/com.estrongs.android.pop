package jcifs.smb;

import java.io.UnsupportedEncodingException;

class SmbComTreeConnectAndXResponse
  extends AndXServerMessageBlock
{
  private static final int SMB_SHARE_IS_IN_DFS = 2;
  private static final int SMB_SUPPORT_SEARCH_BITS = 1;
  String nativeFileSystem = "";
  String service;
  boolean shareIsInDfs;
  boolean supportSearchBits;
  
  SmbComTreeConnectAndXResponse(ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = readStringLength(paramArrayOfByte, paramInt, 32);
    try
    {
      service = new String(paramArrayOfByte, paramInt, i, "ASCII");
      return i + 1 + paramInt - paramInt;
    }
    catch (UnsupportedEncodingException paramArrayOfByte) {}
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool2 = true;
    if ((paramArrayOfByte[paramInt] & 0x1) == 1)
    {
      bool1 = true;
      supportSearchBits = bool1;
      if ((paramArrayOfByte[paramInt] & 0x2) != 2) {
        break label43;
      }
    }
    label43:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      shareIsInDfs = bool1;
      return 2;
      bool1 = false;
      break;
    }
  }
  
  public String toString()
  {
    return new String("SmbComTreeConnectAndXResponse[" + super.toString() + ",supportSearchBits=" + supportSearchBits + ",shareIsInDfs=" + shareIsInDfs + ",service=" + service + ",nativeFileSystem=" + nativeFileSystem + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComTreeConnectAndXResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */