package jcifs.smb;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.TimeZone;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;
import jcifs.util.transport.Request;
import jcifs.util.transport.Response;

abstract class ServerMessageBlock
  extends Response
  implements SmbConstants, Request
{
  static final byte SMB_COM_CHECK_DIRECTORY = 16;
  static final byte SMB_COM_CLOSE = 4;
  static final byte SMB_COM_CREATE_DIRECTORY = 0;
  static final byte SMB_COM_DELETE = 6;
  static final byte SMB_COM_DELETE_DIRECTORY = 1;
  static final byte SMB_COM_ECHO = 43;
  static final byte SMB_COM_FIND_CLOSE2 = 52;
  static final byte SMB_COM_LOGOFF_ANDX = 116;
  static final byte SMB_COM_MOVE = 42;
  static final byte SMB_COM_NEGOTIATE = 114;
  static final byte SMB_COM_NT_CREATE_ANDX = -94;
  static final byte SMB_COM_NT_TRANSACT = -96;
  static final byte SMB_COM_NT_TRANSACT_SECONDARY = -95;
  static final byte SMB_COM_OPEN_ANDX = 45;
  static final byte SMB_COM_QUERY_INFORMATION = 8;
  static final byte SMB_COM_READ_ANDX = 46;
  static final byte SMB_COM_RENAME = 7;
  static final byte SMB_COM_SESSION_SETUP_ANDX = 115;
  static final byte SMB_COM_TRANSACTION = 37;
  static final byte SMB_COM_TRANSACTION2 = 50;
  static final byte SMB_COM_TRANSACTION_SECONDARY = 38;
  static final byte SMB_COM_TREE_CONNECT_ANDX = 117;
  static final byte SMB_COM_TREE_DISCONNECT = 113;
  static final byte SMB_COM_WRITE = 11;
  static final byte SMB_COM_WRITE_ANDX = 47;
  static final byte[] header = { -1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  static LogStream log = ;
  NtlmPasswordAuthentication auth = null;
  int batchLevel = 0;
  int byteCount;
  byte command;
  SigningDigest digest = null;
  int errorCode;
  boolean extendedSecurity;
  byte flags = 24;
  int flags2;
  int headerStart;
  int length;
  int mid;
  String path;
  int pid = PID;
  boolean received;
  ServerMessageBlock response;
  long responseTimeout = 1L;
  int signSeq;
  int tid;
  int uid;
  boolean useUnicode;
  boolean verifyFailed;
  int wordCount;
  
  static int readInt2(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8);
  }
  
  static int readInt4(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24);
  }
  
  static long readInt8(byte[] paramArrayOfByte, int paramInt)
  {
    return (readInt4(paramArrayOfByte, paramInt) & 0xFFFFFFFF) + (readInt4(paramArrayOfByte, paramInt + 4) << 32);
  }
  
  static long readTime(byte[] paramArrayOfByte, int paramInt)
  {
    int i = readInt4(paramArrayOfByte, paramInt);
    long l = readInt4(paramArrayOfByte, paramInt + 4);
    return (i & 0xFFFFFFFF | l << 32) / 10000L - 11644473600000L;
  }
  
  static long readUTime(byte[] paramArrayOfByte, int paramInt)
  {
    return readInt4(paramArrayOfByte, paramInt) * 1000L;
  }
  
  static void writeInt2(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 8));
  }
  
  static void writeInt4(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 8));
  }
  
  static void writeInt8(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramInt += 1;
    paramLong >>= 8;
    paramArrayOfByte[paramInt] = ((byte)(int)paramLong);
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 8));
  }
  
  static void writeTime(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    long l = paramLong;
    if (paramLong != 0L) {
      l = (11644473600000L + paramLong) * 10000L;
    }
    writeInt8(l, paramArrayOfByte, paramInt);
  }
  
  static void writeUTime(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramLong == 0L) || (paramLong == -1L))
    {
      writeInt4(-1L, paramArrayOfByte, paramInt);
      return;
    }
    synchronized (TZ)
    {
      if (TZ.inDaylightTime(new Date())) {
        if (TZ.inDaylightTime(new Date(paramLong))) {
          l = paramLong;
        }
      }
      do
      {
        for (;;)
        {
          writeInt4((int)(l / 1000L), paramArrayOfByte, paramInt);
          return;
          l = paramLong - 3600000L;
        }
        l = paramLong;
      } while (!TZ.inDaylightTime(new Date(paramLong)));
      long l = paramLong + 3600000L;
    }
  }
  
  int decode(byte[] paramArrayOfByte, int paramInt)
  {
    headerStart = paramInt;
    int i = paramInt + readHeaderWireFormat(paramArrayOfByte, paramInt);
    int j = i + 1;
    wordCount = paramArrayOfByte[i];
    i = j;
    if (wordCount != 0)
    {
      i = readParameterWordsWireFormat(paramArrayOfByte, j);
      if (i != wordCount * 2)
      {
        LogStream localLogStream = log;
        if (LogStream.level >= 5) {
          log.println("wordCount * 2=" + wordCount * 2 + " but readParameterWordsWireFormat returned " + i);
        }
      }
      i = j + wordCount * 2;
    }
    byteCount = readInt2(paramArrayOfByte, i);
    j = i + 2;
    i = j;
    if (byteCount != 0)
    {
      i = readBytesWireFormat(paramArrayOfByte, j);
      if (i != byteCount)
      {
        paramArrayOfByte = log;
        if (LogStream.level >= 5) {
          log.println("byteCount=" + byteCount + " but readBytesWireFormat returned " + i);
        }
      }
      i = j + byteCount;
    }
    length = (i - paramInt);
    return length;
  }
  
  int encode(byte[] paramArrayOfByte, int paramInt)
  {
    headerStart = paramInt;
    int i = writeHeaderWireFormat(paramArrayOfByte, paramInt) + paramInt;
    wordCount = writeParameterWordsWireFormat(paramArrayOfByte, i + 1);
    paramArrayOfByte[i] = ((byte)(wordCount / 2 & 0xFF));
    i = wordCount + (i + 1);
    wordCount /= 2;
    byteCount = writeBytesWireFormat(paramArrayOfByte, i + 2);
    int j = i + 1;
    paramArrayOfByte[i] = ((byte)(byteCount & 0xFF));
    paramArrayOfByte[j] = ((byte)(byteCount >> 8 & 0xFF));
    length = (j + 1 + byteCount - paramInt);
    if (digest != null) {
      digest.sign(paramArrayOfByte, headerStart, length, this, response);
    }
    return length;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ServerMessageBlock)) && (mid == mid);
  }
  
  public int hashCode()
  {
    return mid;
  }
  
  boolean isResponse()
  {
    return (flags & 0x80) == 128;
  }
  
  abstract int readBytesWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int readHeaderWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    command = paramArrayOfByte[(paramInt + 4)];
    errorCode = readInt4(paramArrayOfByte, paramInt + 5);
    flags = paramArrayOfByte[(paramInt + 9)];
    flags2 = readInt2(paramArrayOfByte, paramInt + 9 + 1);
    tid = readInt2(paramArrayOfByte, paramInt + 24);
    pid = readInt2(paramArrayOfByte, paramInt + 24 + 2);
    uid = readInt2(paramArrayOfByte, paramInt + 24 + 4);
    mid = readInt2(paramArrayOfByte, paramInt + 24 + 6);
    return 32;
  }
  
  abstract int readParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  String readString(byte[] paramArrayOfByte, int paramInt)
  {
    return readString(paramArrayOfByte, paramInt, 256, useUnicode);
  }
  
  String readString(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int m = 0;
    int j = 0;
    int i = 128;
    int k;
    if (paramBoolean)
    {
      k = m;
      j = paramInt1;
    }
    for (;;)
    {
      try
      {
        if ((paramInt1 - headerStart) % 2 == 0) {
          break label245;
        }
        j = paramInt1 + 1;
        k = m;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        localObject = log;
        if (LogStream.level <= 1) {
          continue;
        }
        paramArrayOfByte.printStackTrace(log);
        return null;
      }
      return new String(paramArrayOfByte, j, k, "UTF-16LE");
      if (k > paramInt3)
      {
        localObject = log;
        if (LogStream.level > 0)
        {
          localObject = System.err;
          if (paramInt3 < 128) {
            i = paramInt3 + 8;
          }
          Hexdump.hexdump((PrintStream)localObject, paramArrayOfByte, j, i);
        }
        throw new RuntimeException("zero termination not found");
      }
      k += 2;
      break label245;
      do
      {
        j += 1;
        if ((paramInt1 >= paramInt2) || (paramArrayOfByte[(paramInt1 + j)] == 0)) {
          return new String(paramArrayOfByte, paramInt1, j, OEM_ENCODING);
        }
      } while (j <= paramInt3);
      Object localObject = log;
      if (LogStream.level > 0)
      {
        localObject = System.err;
        if (paramInt3 < 128) {
          i = paramInt3 + 8;
        }
        Hexdump.hexdump((PrintStream)localObject, paramArrayOfByte, paramInt1, i);
      }
      throw new RuntimeException("zero termination not found");
      label245:
      if (j + k + 1 < paramInt2) {
        if ((paramArrayOfByte[(j + k)] != 0) || (paramArrayOfByte[(j + k + 1)] != 0)) {}
      }
    }
  }
  
  String readString(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = 128;
    int m = 0;
    int j = 0;
    int k;
    if (paramBoolean)
    {
      k = m;
      j = paramInt1;
    }
    for (;;)
    {
      Object localObject;
      try
      {
        if ((paramInt1 - headerStart) % 2 == 0) {
          break label238;
        }
        j = paramInt1 + 1;
        k = m;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        localObject = log;
        if (LogStream.level <= 1) {
          continue;
        }
        paramArrayOfByte.printStackTrace(log);
        return null;
      }
      paramInt1 = k + 2;
      k = paramInt1;
      if (paramInt1 > paramInt2)
      {
        localObject = log;
        if (LogStream.level > 0)
        {
          localObject = System.err;
          if (paramInt2 < 128) {
            i = paramInt2 + 8;
          }
          Hexdump.hexdump((PrintStream)localObject, paramArrayOfByte, j, i);
        }
        throw new RuntimeException("zero termination not found");
      }
      label238:
      do
      {
        return new String(paramArrayOfByte, j, k, "UTF-16LE");
        while (paramArrayOfByte[(paramInt1 + j)] != 0)
        {
          k = j + 1;
          j = k;
          if (k > paramInt2)
          {
            localObject = log;
            if (LogStream.level > 0)
            {
              localObject = System.err;
              if (paramInt2 < 128) {
                i = paramInt2 + 8;
              }
              Hexdump.hexdump((PrintStream)localObject, paramArrayOfByte, paramInt1, i);
            }
            throw new RuntimeException("zero termination not found");
          }
        }
        paramArrayOfByte = new String(paramArrayOfByte, paramInt1, j, OEM_ENCODING);
        return paramArrayOfByte;
        if (paramArrayOfByte[(j + k)] != 0) {
          break;
        }
      } while (paramArrayOfByte[(j + k + 1)] == 0);
    }
  }
  
  int readStringLength(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      if (paramArrayOfByte[(paramInt1 + i)] != 0)
      {
        if (i > paramInt2) {
          throw new RuntimeException("zero termination not found: " + this);
        }
      }
      else {
        return i;
      }
      i += 1;
    }
  }
  
  void reset()
  {
    flags = 24;
    flags2 = 0;
    errorCode = 0;
    received = false;
    digest = null;
  }
  
  int stringWireLength(String paramString, int paramInt)
  {
    int i = paramString.length() + 1;
    if (useUnicode)
    {
      int j = paramString.length() * 2 + 2;
      i = j;
      if (paramInt % 2 != 0) {
        i = j + 1;
      }
    }
    return i;
  }
  
  public String toString()
  {
    String str1;
    switch (command)
    {
    default: 
      str1 = "UNKNOWN";
      if (errorCode != 0) {
        break;
      }
    }
    for (String str2 = "0";; str2 = SmbException.getMessageByCode(errorCode))
    {
      return new String("command=" + str1 + ",received=" + received + ",errorCode=" + str2 + ",flags=0x" + Hexdump.toHexString(flags & 0xFF, 4) + ",flags2=0x" + Hexdump.toHexString(flags2, 4) + ",signSeq=" + signSeq + ",tid=" + tid + ",pid=" + pid + ",uid=" + uid + ",mid=" + mid + ",wordCount=" + wordCount + ",byteCount=" + byteCount);
      str1 = "SMB_COM_NEGOTIATE";
      break;
      str1 = "SMB_COM_SESSION_SETUP_ANDX";
      break;
      str1 = "SMB_COM_TREE_CONNECT_ANDX";
      break;
      str1 = "SMB_COM_QUERY_INFORMATION";
      break;
      str1 = "SMB_COM_CHECK_DIRECTORY";
      break;
      str1 = "SMB_COM_TRANSACTION";
      break;
      str1 = "SMB_COM_TRANSACTION2";
      break;
      str1 = "SMB_COM_TRANSACTION_SECONDARY";
      break;
      str1 = "SMB_COM_FIND_CLOSE2";
      break;
      str1 = "SMB_COM_TREE_DISCONNECT";
      break;
      str1 = "SMB_COM_LOGOFF_ANDX";
      break;
      str1 = "SMB_COM_ECHO";
      break;
      str1 = "SMB_COM_MOVE";
      break;
      str1 = "SMB_COM_RENAME";
      break;
      str1 = "SMB_COM_DELETE";
      break;
      str1 = "SMB_COM_DELETE_DIRECTORY";
      break;
      str1 = "SMB_COM_NT_CREATE_ANDX";
      break;
      str1 = "SMB_COM_OPEN_ANDX";
      break;
      str1 = "SMB_COM_READ_ANDX";
      break;
      str1 = "SMB_COM_CLOSE";
      break;
      str1 = "SMB_COM_WRITE_ANDX";
      break;
      str1 = "SMB_COM_CREATE_DIRECTORY";
      break;
      str1 = "SMB_COM_NT_TRANSACT";
      break;
      str1 = "SMB_COM_NT_TRANSACT_SECONDARY";
      break;
    }
  }
  
  abstract int writeBytesWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeHeaderWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    System.arraycopy(header, 0, paramArrayOfByte, paramInt, header.length);
    paramArrayOfByte[(paramInt + 4)] = command;
    paramArrayOfByte[(paramInt + 9)] = flags;
    writeInt2(flags2, paramArrayOfByte, paramInt + 9 + 1);
    paramInt += 24;
    writeInt2(tid, paramArrayOfByte, paramInt);
    writeInt2(pid, paramArrayOfByte, paramInt + 2);
    writeInt2(uid, paramArrayOfByte, paramInt + 4);
    writeInt2(mid, paramArrayOfByte, paramInt + 6);
    return 32;
  }
  
  abstract int writeParameterWordsWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  int writeString(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    return writeString(paramString, paramArrayOfByte, paramInt, useUnicode);
  }
  
  int writeString(String paramString, byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        i = headerStart;
        if ((paramInt - i) % 2 == 0) {
          continue;
        }
        i = paramInt + 1;
        paramArrayOfByte[paramInt] = 0;
      }
      catch (UnsupportedEncodingException paramString)
      {
        int k;
        int j = paramInt;
        continue;
        int i = paramInt;
        continue;
      }
      try
      {
        System.arraycopy(paramString.getBytes("UTF-16LE"), 0, paramArrayOfByte, i, paramString.length() * 2);
        j = paramString.length() * 2 + i;
        k = j + 1;
        paramArrayOfByte[j] = 0;
        i = k + 1;
        paramArrayOfByte[k] = 0;
        return i - paramInt;
      }
      catch (UnsupportedEncodingException paramString)
      {
        j = i;
        continue;
      }
      paramString = paramString.getBytes(OEM_ENCODING);
      System.arraycopy(paramString, 0, paramArrayOfByte, paramInt, paramString.length);
      i = paramString.length;
      j = paramInt + i;
      i = j + 1;
      paramArrayOfByte[j] = 0;
      continue;
      paramArrayOfByte = log;
      i = j;
      if (LogStream.level > 1)
      {
        paramString.printStackTrace(log);
        i = j;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.ServerMessageBlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */