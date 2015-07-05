package jcifs.smb;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

public class SigningDigest
  implements SmbConstants
{
  static LogStream log = ;
  private boolean bypass = false;
  private MessageDigest digest;
  private byte[] macSigningKey;
  private int signSequence;
  private int updates;
  
  public SigningDigest(SmbTransport paramSmbTransport, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    for (;;)
    {
      try
      {
        digest = MessageDigest.getInstance("MD5");
        macSigningKey = new byte[40];
      }
      catch (NoSuchAlgorithmException paramSmbTransport)
      {
        try
        {
          switch (LM_COMPATIBILITY)
          {
          case 0: 
            macSigningKey = new byte[40];
            paramNtlmPasswordAuthentication.getUserSessionKey(server.encryptionKey, macSigningKey, 0);
            System.arraycopy(paramNtlmPasswordAuthentication.getUnicodeHash(server.encryptionKey), 0, macSigningKey, 16, 24);
            paramSmbTransport = log;
            if (LogStream.level >= 5)
            {
              log.println("LM_COMPATIBILITY=" + LM_COMPATIBILITY);
              Hexdump.hexdump(log, macSigningKey, 0, macSigningKey.length);
            }
            return;
          }
        }
        catch (Exception paramSmbTransport)
        {
          throw new SmbException("", paramSmbTransport);
        }
        paramSmbTransport = paramSmbTransport;
        paramNtlmPasswordAuthentication = log;
        if (LogStream.level > 0) {
          paramSmbTransport.printStackTrace(log);
        }
        throw new SmbException("MD5", paramSmbTransport);
      }
      paramNtlmPasswordAuthentication.getUserSessionKey(server.encryptionKey, macSigningKey, 0);
      System.arraycopy(paramNtlmPasswordAuthentication.getUnicodeHash(server.encryptionKey), 0, macSigningKey, 16, 24);
      continue;
      macSigningKey = new byte[16];
      paramNtlmPasswordAuthentication.getUserSessionKey(server.encryptionKey, macSigningKey, 0);
    }
  }
  
  public SigningDigest(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    try
    {
      digest = MessageDigest.getInstance("MD5");
      macSigningKey = paramArrayOfByte;
      bypass = paramBoolean;
      updates = 0;
      signSequence = 0;
      localLogStream = log;
      if (LogStream.level >= 5)
      {
        log.println("macSigningKey:");
        Hexdump.hexdump(log, paramArrayOfByte, 0, paramArrayOfByte.length);
      }
      return;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      LogStream localLogStream = log;
      if (LogStream.level > 0) {
        paramArrayOfByte.printStackTrace(log);
      }
      throw new SmbException("MD5", paramArrayOfByte);
    }
  }
  
  public byte[] digest()
  {
    byte[] arrayOfByte = digest.digest();
    LogStream localLogStream = log;
    if (LogStream.level >= 5)
    {
      log.println("digest: ");
      Hexdump.hexdump(log, arrayOfByte, 0, arrayOfByte.length);
      log.flush();
    }
    updates = 0;
    return arrayOfByte;
  }
  
  void sign(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    int i = 0;
    signSeq = signSequence;
    if (paramServerMessageBlock2 != null)
    {
      signSeq = (signSequence + 1);
      verifyFailed = false;
    }
    for (;;)
    {
      int j;
      try
      {
        update(macSigningKey, 0, macSigningKey.length);
        j = paramInt1 + 14;
      }
      catch (Exception paramArrayOfByte)
      {
        paramServerMessageBlock1 = log;
        if (LogStream.level <= 0) {
          continue;
        }
        paramArrayOfByte.printStackTrace(log);
        return;
      }
      finally
      {
        signSequence += 2;
      }
      ServerMessageBlock.writeInt4(signSequence, paramArrayOfByte, j);
      update(paramArrayOfByte, paramInt1, paramInt2);
      System.arraycopy(digest(), 0, paramArrayOfByte, j, 8);
      if (bypass)
      {
        bypass = false;
        System.arraycopy("BSRSPYL ".getBytes(), 0, paramArrayOfByte, j, 8);
      }
      signSequence += 2;
      return;
      while (i < 8)
      {
        paramArrayOfByte[(j + i)] = 0;
        i += 1;
      }
    }
  }
  
  public String toString()
  {
    return "LM_COMPATIBILITY=" + LM_COMPATIBILITY + " MacSigningKey=" + Hexdump.toHexString(macSigningKey, 0, macSigningKey.length);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    LogStream localLogStream = log;
    if (LogStream.level >= 5)
    {
      log.println("update: " + updates + " " + paramInt1 + ":" + paramInt2);
      Hexdump.hexdump(log, paramArrayOfByte, paramInt1, Math.min(paramInt2, 256));
      log.flush();
    }
    if (paramInt2 == 0) {
      return;
    }
    digest.update(paramArrayOfByte, paramInt1, paramInt2);
    updates += 1;
  }
  
  boolean verify(byte[] paramArrayOfByte, int paramInt, ServerMessageBlock paramServerMessageBlock)
  {
    update(macSigningKey, 0, macSigningKey.length);
    update(paramArrayOfByte, paramInt, 14);
    Object localObject = new byte[8];
    ServerMessageBlock.writeInt4(signSeq, (byte[])localObject, 0);
    update((byte[])localObject, 0, localObject.length);
    int i = paramInt + 14 + 8;
    if (command == 46)
    {
      localObject = (SmbComReadAndXResponse)paramServerMessageBlock;
      update(paramArrayOfByte, i, length - dataLength - 14 - 8);
      update(b, off, dataLength);
      localObject = digest();
      i = 0;
    }
    for (;;)
    {
      if (i >= 8) {
        break label228;
      }
      if (localObject[i] != paramArrayOfByte[(paramInt + 14 + i)])
      {
        LogStream localLogStream = log;
        if (LogStream.level >= 2)
        {
          log.println("signature verification failure");
          Hexdump.hexdump(log, (byte[])localObject, 0, 8);
          Hexdump.hexdump(log, paramArrayOfByte, paramInt + 14, 8);
        }
        verifyFailed = true;
        return true;
        update(paramArrayOfByte, i, length - 14 - 8);
        break;
      }
      i += 1;
    }
    label228:
    verifyFailed = false;
    return false;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SigningDigest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */