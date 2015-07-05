package jcifs.smb;

import jcifs.Config;

class SmbComSessionSetupAndX
  extends AndXServerMessageBlock
{
  private static final int BATCH_LIMIT = Config.getInt("jcifs.smb.client.SessionSetupAndX.TreeConnectAndX", 1);
  private static final boolean DISABLE_PLAIN_TEXT_PASSWORDS = Config.getBoolean("jcifs.smb.client.disablePlainTextPasswords", true);
  private String accountName;
  private byte[] blob = null;
  private int capabilities;
  Object cred;
  private byte[] lmHash;
  private byte[] ntHash;
  private String primaryDomain;
  SmbSession session;
  private int sessionKey;
  
  SmbComSessionSetupAndX(SmbSession paramSmbSession, ServerMessageBlock paramServerMessageBlock, Object paramObject)
  {
    super(paramServerMessageBlock);
    command = 115;
    session = paramSmbSession;
    cred = paramObject;
    sessionKey = transport.sessionKey;
    capabilities = transport.capabilities;
    if (transport.server.security == 1)
    {
      if ((paramObject instanceof NtlmPasswordAuthentication))
      {
        paramServerMessageBlock = (NtlmPasswordAuthentication)paramObject;
        if (paramServerMessageBlock == NtlmPasswordAuthentication.ANONYMOUS)
        {
          lmHash = new byte[0];
          ntHash = new byte[0];
          capabilities &= 0x7FFFFFFF;
        }
        for (;;)
        {
          accountName = username;
          if (useUnicode) {
            accountName = accountName.toUpperCase();
          }
          primaryDomain = domain.toUpperCase();
          return;
          if (transport.server.encryptedPasswords)
          {
            lmHash = paramServerMessageBlock.getAnsiHash(transport.server.encryptionKey);
            ntHash = paramServerMessageBlock.getUnicodeHash(transport.server.encryptionKey);
            if ((lmHash.length == 0) && (ntHash.length == 0)) {
              throw new RuntimeException("Null setup prohibited.");
            }
          }
          else
          {
            if (DISABLE_PLAIN_TEXT_PASSWORDS) {
              throw new RuntimeException("Plain text passwords are disabled");
            }
            if (useUnicode)
            {
              paramSmbSession = paramServerMessageBlock.getPassword();
              lmHash = new byte[0];
              ntHash = new byte[(paramSmbSession.length() + 1) * 2];
              writeString(paramSmbSession, ntHash, 0);
            }
            else
            {
              paramSmbSession = paramServerMessageBlock.getPassword();
              lmHash = new byte[(paramSmbSession.length() + 1) * 2];
              ntHash = new byte[0];
              writeString(paramSmbSession, lmHash, 0);
            }
          }
        }
      }
      if ((paramObject instanceof byte[]))
      {
        blob = ((byte[])paramObject);
        return;
      }
      throw new SmbException("Unsupported credential type");
    }
    if (transport.server.security == 0)
    {
      if ((paramObject instanceof NtlmPasswordAuthentication))
      {
        paramSmbSession = (NtlmPasswordAuthentication)paramObject;
        lmHash = new byte[0];
        ntHash = new byte[0];
        accountName = username;
        if (useUnicode) {
          accountName = accountName.toUpperCase();
        }
        primaryDomain = domain.toUpperCase();
        return;
      }
      throw new SmbException("Unsupported credential type");
    }
    throw new SmbException("Unsupported");
  }
  
  int getBatchLimit(byte paramByte)
  {
    if (paramByte == 117) {
      return BATCH_LIMIT;
    }
    return 0;
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
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder().append("SmbComSessionSetupAndX[").append(super.toString()).append(",snd_buf_size=").append(session.transport.snd_buf_size).append(",maxMpxCount=").append(session.transport.maxMpxCount).append(",VC_NUMBER=");
    SmbTransport localSmbTransport = session.transport;
    localStringBuilder = localStringBuilder.append(1).append(",sessionKey=").append(sessionKey).append(",lmHash.length=");
    if (lmHash == null)
    {
      i = 0;
      localStringBuilder = localStringBuilder.append(i).append(",ntHash.length=");
      if (ntHash != null) {
        break label234;
      }
    }
    label234:
    for (int i = j;; i = ntHash.length)
    {
      localStringBuilder = localStringBuilder.append(i).append(",capabilities=").append(capabilities).append(",accountName=").append(accountName).append(",primaryDomain=").append(primaryDomain).append(",NATIVE_OS=");
      localSmbTransport = session.transport;
      localStringBuilder = localStringBuilder.append(SmbTransport.NATIVE_OS).append(",NATIVE_LANMAN=");
      localSmbTransport = session.transport;
      return new String(SmbTransport.NATIVE_LANMAN + "]");
      i = lmHash.length;
      break;
    }
  }
  
  int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (blob != null)
    {
      System.arraycopy(blob, 0, paramArrayOfByte, paramInt, blob.length);
      i = blob.length + paramInt;
    }
    for (;;)
    {
      SmbTransport localSmbTransport = session.transport;
      i += writeString(SmbTransport.NATIVE_OS, paramArrayOfByte, i);
      localSmbTransport = session.transport;
      return i + writeString(SmbTransport.NATIVE_LANMAN, paramArrayOfByte, i) - paramInt;
      System.arraycopy(lmHash, 0, paramArrayOfByte, paramInt, lmHash.length);
      i = lmHash.length + paramInt;
      System.arraycopy(ntHash, 0, paramArrayOfByte, i, ntHash.length);
      i += ntHash.length;
      i += writeString(accountName, paramArrayOfByte, i);
      i += writeString(primaryDomain, paramArrayOfByte, i);
    }
  }
  
  int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    writeInt2(session.transport.snd_buf_size, paramArrayOfByte, paramInt);
    int i = paramInt + 2;
    writeInt2(session.transport.maxMpxCount, paramArrayOfByte, i);
    i += 2;
    SmbTransport localSmbTransport = session.transport;
    writeInt2(1L, paramArrayOfByte, i);
    i += 2;
    writeInt4(sessionKey, paramArrayOfByte, i);
    i += 4;
    if (blob != null)
    {
      writeInt2(blob.length, paramArrayOfByte, i);
      i += 2;
    }
    for (;;)
    {
      int j = i + 1;
      paramArrayOfByte[i] = 0;
      i = j + 1;
      paramArrayOfByte[j] = 0;
      j = i + 1;
      paramArrayOfByte[i] = 0;
      i = j + 1;
      paramArrayOfByte[j] = 0;
      writeInt4(capabilities, paramArrayOfByte, i);
      return i + 4 - paramInt;
      writeInt2(lmHash.length, paramArrayOfByte, i);
      i += 2;
      writeInt2(ntHash.length, paramArrayOfByte, i);
      i += 2;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbComSessionSetupAndX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */