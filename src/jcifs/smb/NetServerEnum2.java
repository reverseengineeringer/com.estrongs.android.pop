package jcifs.smb;

import java.io.UnsupportedEncodingException;

class NetServerEnum2
  extends SmbComTransaction
{
  static final String[] DESCR = { "WrLehDO\000B16BBDz\000", "WrLehDz\000B16BBDz\000" };
  static final int SV_TYPE_ALL = -1;
  static final int SV_TYPE_DOMAIN_ENUM = Integer.MIN_VALUE;
  String domain;
  String lastName = null;
  int serverTypes;
  
  NetServerEnum2(String paramString, int paramInt)
  {
    domain = paramString;
    serverTypes = paramInt;
    command = 37;
    subCommand = 104;
    name = "\\PIPE\\LANMAN";
    maxParameterCount = 8;
    maxDataCount = 16384;
    maxSetupCount = 0;
    setupCount = 0;
    timeout = 5000;
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
    lastName = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("NetServerEnum2[").append(super.toString()).append(",name=").append(name).append(",serverTypes=");
    if (serverTypes == -1) {}
    for (String str = "SV_TYPE_ALL";; str = "SV_TYPE_DOMAIN_ENUM") {
      return new String(str + "]");
    }
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (subCommand == 104) {
      i = 0;
    }
    for (;;)
    {
      int j;
      try
      {
        byte[] arrayOfByte = DESCR[i].getBytes("ASCII");
        writeInt2(subCommand & 0xFF, paramArrayOfByte, paramInt);
        j = paramInt + 2;
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, j, arrayOfByte.length);
        j = arrayOfByte.length + j;
        writeInt2(1L, paramArrayOfByte, j);
        j += 2;
        writeInt2(maxDataCount, paramArrayOfByte, j);
        j += 2;
        writeInt4(serverTypes, paramArrayOfByte, j);
        j += 4;
        j += writeString(domain.toUpperCase(), paramArrayOfByte, j, false);
        if (i != 1) {
          break label165;
        }
        i = writeString(lastName.toUpperCase(), paramArrayOfByte, j, false) + j;
        return i - paramInt;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        return 0;
      }
      i = 1;
      continue;
      label165:
      i = j;
    }
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NetServerEnum2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */