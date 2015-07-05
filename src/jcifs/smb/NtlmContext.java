package jcifs.smb;

import java.io.UnsupportedEncodingException;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

public class NtlmContext
{
  NtlmPasswordAuthentication auth;
  boolean isEstablished = false;
  LogStream log;
  String netbiosName = null;
  int ntlmsspFlags;
  byte[] serverChallenge = null;
  byte[] signingKey = null;
  int state = 1;
  String workstation;
  
  public NtlmContext(NtlmPasswordAuthentication paramNtlmPasswordAuthentication, boolean paramBoolean)
  {
    auth = paramNtlmPasswordAuthentication;
    ntlmsspFlags = (ntlmsspFlags | 0x4 | 0x80000 | 0x20000000);
    if (paramBoolean) {
      ntlmsspFlags |= 0x40008010;
    }
    workstation = Type1Message.getDefaultWorkstation();
    log = LogStream.getInstance();
  }
  
  private String getNtlmsspListItem(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 58;
    for (;;)
    {
      int j = Encdec.dec_uint16le(paramArrayOfByte, i);
      int k = Encdec.dec_uint16le(paramArrayOfByte, i + 2);
      i += 4;
      if ((j == 0) || (i + k > paramArrayOfByte.length)) {}
      for (;;)
      {
        return null;
        if (j != paramInt) {
          break;
        }
        try
        {
          paramArrayOfByte = new String(paramArrayOfByte, i, k, "UTF-16LE");
          return paramArrayOfByte;
        }
        catch (UnsupportedEncodingException paramArrayOfByte) {}
      }
      i += k;
    }
  }
  
  public String getNetbiosName()
  {
    return netbiosName;
  }
  
  public byte[] getServerChallenge()
  {
    return serverChallenge;
  }
  
  public byte[] getSigningKey()
  {
    return signingKey;
  }
  
  public byte[] initSecContext(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject;
    LogStream localLogStream;
    switch (state)
    {
    default: 
      throw new SmbException("Invalid state");
    case 1: 
      localObject = new Type1Message(ntlmsspFlags, auth.getDomain(), workstation);
      paramArrayOfByte = ((Type1Message)localObject).toByteArray();
      localLogStream = log;
      if (LogStream.level >= 4)
      {
        log.println(localObject);
        localObject = log;
        if (LogStream.level >= 6) {
          Hexdump.hexdump(log, paramArrayOfByte, 0, paramArrayOfByte.length);
        }
      }
      state += 1;
      return paramArrayOfByte;
    }
    try
    {
      localObject = new Type2Message(paramArrayOfByte);
      localLogStream = log;
      if (LogStream.level >= 4)
      {
        log.println(localObject);
        localLogStream = log;
        if (LogStream.level >= 6) {
          Hexdump.hexdump(log, paramArrayOfByte, 0, paramArrayOfByte.length);
        }
      }
      serverChallenge = ((Type2Message)localObject).getChallenge();
      ntlmsspFlags &= ((Type2Message)localObject).getFlags();
      paramArrayOfByte = new Type3Message((Type2Message)localObject, auth.getPassword(), auth.getDomain(), auth.getUsername(), workstation, ntlmsspFlags);
      localObject = paramArrayOfByte.toByteArray();
      localLogStream = log;
      if (LogStream.level >= 4)
      {
        log.println(paramArrayOfByte);
        localLogStream = log;
        if (LogStream.level >= 6) {
          Hexdump.hexdump(log, (byte[])localObject, 0, localObject.length);
        }
      }
      if ((ntlmsspFlags & 0x10) != 0) {
        signingKey = paramArrayOfByte.getMasterKey();
      }
      isEstablished = true;
      state += 1;
      return (byte[])localObject;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SmbException(paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
  
  public boolean isEstablished()
  {
    return isEstablished;
  }
  
  public String toString()
  {
    String str = "NtlmContext[auth=" + auth + ",ntlmsspFlags=0x" + Hexdump.toHexString(ntlmsspFlags, 8) + ",workstation=" + workstation + ",isEstablished=" + isEstablished + ",state=" + state + ",serverChallenge=";
    if (serverChallenge == null)
    {
      str = str + "null";
      str = str + ",signingKey=";
      if (signingKey != null) {
        break label211;
      }
    }
    label211:
    for (str = str + "null";; str = str + Hexdump.toHexString(signingKey, 0, signingKey.length * 2))
    {
      return str + "]";
      str = str + Hexdump.toHexString(serverChallenge, 0, serverChallenge.length * 2);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtlmContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */