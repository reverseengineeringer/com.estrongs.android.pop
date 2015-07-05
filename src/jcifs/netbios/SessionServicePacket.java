package jcifs.netbios;

import java.io.IOException;
import java.io.InputStream;

public abstract class SessionServicePacket
{
  static final int HEADER_LENGTH = 4;
  static final int MAX_MESSAGE_SIZE = 131071;
  public static final int NEGATIVE_SESSION_RESPONSE = 131;
  public static final int POSITIVE_SESSION_RESPONSE = 130;
  static final int SESSION_KEEP_ALIVE = 133;
  static final int SESSION_MESSAGE = 0;
  static final int SESSION_REQUEST = 129;
  static final int SESSION_RETARGET_RESPONSE = 132;
  int length;
  int type;
  
  static int readInt2(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
  
  static int readInt4(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }
  
  static int readLength(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = i + 1;
    i = paramArrayOfByte[i];
    int j = paramInt + 1;
    return ((i & 0x1) << 16) + ((paramArrayOfByte[paramInt] & 0xFF) << 8) + (paramArrayOfByte[j] & 0xFF);
  }
  
  static int readPacketType(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    int i = readn(paramInputStream, paramArrayOfByte, paramInt, 4);
    if (i != 4)
    {
      if (i == -1) {
        return -1;
      }
      throw new IOException("unexpected EOF reading netbios session header");
    }
    return paramArrayOfByte[paramInt] & 0xFF;
  }
  
  static int readn(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      int j;
      if (i < paramInt2)
      {
        j = paramInputStream.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
        if (j > 0) {}
      }
      else
      {
        return i;
      }
      i += j;
    }
  }
  
  static void writeInt2(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 & 0xFF));
  }
  
  static void writeInt4(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 24 & 0xFF));
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >> 16 & 0xFF));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 & 0xFF));
  }
  
  int readHeaderWireFormat(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    type = (paramArrayOfByte[paramInt] & 0xFF);
    paramInt = paramArrayOfByte[i];
    length = (readInt2(paramArrayOfByte, i + 1) + ((paramInt & 0x1) << 16));
    return 4;
  }
  
  abstract int readTrailerWireFormat(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt);
  
  int readWireFormat(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    readHeaderWireFormat(paramInputStream, paramArrayOfByte, paramInt);
    return readTrailerWireFormat(paramInputStream, paramArrayOfByte, paramInt) + 4;
  }
  
  int writeHeaderWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)type);
    if (length > 65535) {
      paramArrayOfByte[i] = 1;
    }
    writeInt2(length, paramArrayOfByte, i + 1);
    return 4;
  }
  
  abstract int writeTrailerWireFormat(byte[] paramArrayOfByte, int paramInt);
  
  public int writeWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    length = writeTrailerWireFormat(paramArrayOfByte, paramInt + 4);
    writeHeaderWireFormat(paramArrayOfByte, paramInt);
    return length + 4;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.SessionServicePacket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */