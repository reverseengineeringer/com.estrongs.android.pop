package jcifs.smb;

import java.io.UnsupportedEncodingException;
import jcifs.Config;
import jcifs.util.Hexdump;

class SmbComTreeConnectAndX
  extends AndXServerMessageBlock
{
  private static final boolean DISABLE_PLAIN_TEXT_PASSWORDS = Config.getBoolean("jcifs.smb.client.disablePlainTextPasswords", true);
  private static byte[] batchLimits = { 1, 1, 1, 1, 1, 1, 1, 1, 0 };
  private boolean disconnectTid = false;
  private byte[] password;
  private int passwordLength;
  String path;
  private String service;
  private SmbSession session;
  
  static
  {
    String str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.CheckDirectory");
    if (str != null) {
      batchLimits[0] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.CreateDirectory");
    if (str != null) {
      batchLimits[2] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.Delete");
    if (str != null) {
      batchLimits[3] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.DeleteDirectory");
    if (str != null) {
      batchLimits[4] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.OpenAndX");
    if (str != null) {
      batchLimits[5] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.Rename");
    if (str != null) {
      batchLimits[6] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.Transaction");
    if (str != null) {
      batchLimits[7] = Byte.parseByte(str);
    }
    str = Config.getProperty("jcifs.smb.client.TreeConnectAndX.QueryInformation");
    if (str != null) {
      batchLimits[8] = Byte.parseByte(str);
    }
  }
  
  SmbComTreeConnectAndX(SmbSession paramSmbSession, String paramString1, String paramString2, ServerMessageBlock paramServerMessageBlock)
  {
    super(paramServerMessageBlock);
    session = paramSmbSession;
    path = paramString1;
    service = paramString2;
    command = 117;
  }
  
  int getBatchLimit(byte paramByte)
  {
    switch (paramByte & 0xFF)
    {
    default: 
      return 0;
    case 16: 
      return batchLimits[0];
    case 0: 
      return batchLimits[2];
    case 6: 
      return batchLimits[3];
    case 1: 
      return batchLimits[4];
    case 45: 
      return batchLimits[5];
    case 7: 
      return batchLimits[6];
    case 37: 
      return batchLimits[7];
    }
    return batchLimits[8];
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("SmbComTreeConnectAndX[" + super.toString() + ",disconnectTid=" + disconnectTid + ",passwordLength=" + passwordLength + ",password=" + Hexdump.toHexString(password, passwordLength, 0) + ",path=" + path + ",service=" + service + "]");
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if ((session.transport.server.security == 0) && ((session.auth.hashesExternal) || (session.auth.password.length() > 0)))
    {
      System.arraycopy(password, 0, paramArrayOfByte, paramInt, passwordLength);
      i = passwordLength + paramInt;
    }
    for (;;)
    {
      i += writeString(path, paramArrayOfByte, i);
      try
      {
        System.arraycopy(service.getBytes("ASCII"), 0, paramArrayOfByte, i, service.length());
        i += service.length();
        paramArrayOfByte[i] = 0;
        return i + 1 - paramInt;
      }
      catch (UnsupportedEncodingException paramArrayOfByte) {}
      i = paramInt + 1;
      paramArrayOfByte[paramInt] = 0;
    }
    return 0;
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 1;
    int j;
    if ((session.transport.server.security == 0) && ((session.auth.hashesExternal) || (session.auth.password.length() > 0))) {
      if (session.transport.server.encryptedPasswords)
      {
        password = session.auth.getAnsiHash(session.transport.server.encryptionKey);
        passwordLength = password.length;
        j = paramInt + 1;
        if (!disconnectTid) {
          break label208;
        }
      }
    }
    for (;;)
    {
      paramArrayOfByte[paramInt] = i;
      paramArrayOfByte[j] = 0;
      writeInt2(passwordLength, paramArrayOfByte, j + 1);
      return 4;
      if (DISABLE_PLAIN_TEXT_PASSWORDS) {
        throw new RuntimeException("Plain text passwords are disabled");
      }
      password = new byte[(session.auth.password.length() + 1) * 2];
      passwordLength = writeString(session.auth.password, password, 0);
      break;
      passwordLength = 1;
      break;
      label208:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComTreeConnectAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */