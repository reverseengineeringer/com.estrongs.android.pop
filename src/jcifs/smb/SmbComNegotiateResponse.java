package jcifs.smb;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

class SmbComNegotiateResponse
  extends ServerMessageBlock
{
  int dialectIndex;
  SmbTransport.ServerData server;
  
  SmbComNegotiateResponse(SmbTransport.ServerData paramServerData)
  {
    server = paramServerData;
  }
  
  int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int m = 0;
    int j = 0;
    int k;
    if ((server.capabilities & 0x80000000) == 0)
    {
      server.encryptionKey = new byte[server.encryptionKeyLength];
      System.arraycopy(paramArrayOfByte, paramInt, server.encryptionKey, 0, server.encryptionKeyLength);
      k = paramInt + server.encryptionKeyLength;
      if (byteCount > server.encryptionKeyLength) {
        try
        {
          int n = flags2;
          i = m;
          if ((n & 0x8000) == 32768)
          {
            i = j;
            while ((paramArrayOfByte[(k + i)] != 0) || (paramArrayOfByte[(k + i + 1)] != 0))
            {
              j = i + 2;
              i = j;
              if (j > 256)
              {
                i = j;
                throw new RuntimeException("zero termination not found");
              }
            }
          }
        }
        catch (UnsupportedEncodingException paramArrayOfByte)
        {
          j = i;
        }
      }
    }
    for (;;)
    {
      LogStream localLogStream = log;
      i = j;
      if (LogStream.level > 1)
      {
        paramArrayOfByte.printStackTrace(log);
        i = j;
      }
      i += k;
      for (;;)
      {
        return i - paramInt;
        j = i;
        do
        {
          try
          {
            server.oemDomainName = new String(paramArrayOfByte, k, i, "UTF-16LE");
          }
          catch (UnsupportedEncodingException paramArrayOfByte) {}
          j = paramArrayOfByte[(k + i)];
          if (j == 0) {
            break label259;
          }
          j = i + 1;
          i = j;
        } while (j <= 256);
        i = j;
        throw new RuntimeException("zero termination not found");
        label259:
        j = i;
        server.oemDomainName = new String(paramArrayOfByte, k, i, ServerMessageBlock.OEM_ENCODING);
        break;
        server.oemDomainName = new String();
        i = k;
        continue;
        server.guid = new byte[16];
        System.arraycopy(paramArrayOfByte, paramInt, server.guid, 0, 16);
        server.oemDomainName = new String();
        i = paramInt;
      }
    }
  }
  
  int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool2 = true;
    dialectIndex = readInt2(paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    if (dialectIndex > 10) {
      return i - paramInt;
    }
    SmbTransport.ServerData localServerData = server;
    int j = i + 1;
    securityMode = (paramArrayOfByte[i] & 0xFF);
    server.security = (server.securityMode & 0x1);
    localServerData = server;
    if ((server.securityMode & 0x2) == 2)
    {
      bool1 = true;
      encryptedPasswords = bool1;
      localServerData = server;
      if ((server.securityMode & 0x4) != 4) {
        break label315;
      }
      bool1 = true;
      label119:
      signaturesEnabled = bool1;
      localServerData = server;
      if ((server.securityMode & 0x8) != 8) {
        break label321;
      }
    }
    label315:
    label321:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      signaturesRequired = bool1;
      server.maxMpxCount = readInt2(paramArrayOfByte, j);
      i = j + 2;
      server.maxNumberVcs = readInt2(paramArrayOfByte, i);
      i += 2;
      server.maxBufferSize = readInt4(paramArrayOfByte, i);
      i += 4;
      server.maxRawSize = readInt4(paramArrayOfByte, i);
      i += 4;
      server.sessionKey = readInt4(paramArrayOfByte, i);
      i += 4;
      server.capabilities = readInt4(paramArrayOfByte, i);
      i += 4;
      server.serverTime = readTime(paramArrayOfByte, i);
      i += 8;
      server.serverTimeZone = readInt2(paramArrayOfByte, i);
      i += 2;
      server.encryptionKeyLength = (paramArrayOfByte[i] & 0xFF);
      return i + 1 - paramInt;
      bool1 = false;
      break;
      bool1 = false;
      break label119;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("SmbComNegotiateResponse[").append(super.toString()).append(",wordCount=").append(wordCount).append(",dialectIndex=").append(dialectIndex).append(",securityMode=0x").append(Hexdump.toHexString(server.securityMode, 1)).append(",security=");
    if (server.security == 0) {}
    for (String str = "share";; str = "user") {
      return new String(str + ",encryptedPasswords=" + server.encryptedPasswords + ",maxMpxCount=" + server.maxMpxCount + ",maxNumberVcs=" + server.maxNumberVcs + ",maxBufferSize=" + server.maxBufferSize + ",maxRawSize=" + server.maxRawSize + ",sessionKey=0x" + Hexdump.toHexString(server.sessionKey, 8) + ",capabilities=0x" + Hexdump.toHexString(server.capabilities, 8) + ",serverTime=" + new Date(server.serverTime) + ",serverTimeZone=" + server.serverTimeZone + ",encryptionKeyLength=" + server.encryptionKeyLength + ",byteCount=" + byteCount + ",oemDomainName=" + server.oemDomainName + "]");
    }
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
 * Qualified Name:     jcifs.smb.SmbComNegotiateResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */