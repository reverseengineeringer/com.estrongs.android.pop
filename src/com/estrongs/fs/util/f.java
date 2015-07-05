package com.estrongs.fs.util;

import com.estrongs.fs.h;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.crypto.spec.SecretKeySpec;

public class f
{
  protected byte[] b;
  protected h c;
  protected long d;
  protected boolean e;
  protected boolean f;
  protected int g = -1;
  
  protected static int a(RandomAccessFile paramRandomAccessFile, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramInt)
      {
        if (i == paramInt) {
          break;
        }
        throw new IOException("Invalid RandomAccessFile operation");
      }
      int j = paramRandomAccessFile.read(paramArrayOfByte, i, paramInt - i);
      if (j < 0) {
        throw new IOException("End of file reached");
      }
      i += j;
    }
    return paramInt;
  }
  
  protected static byte[] a(byte[] paramArrayOfByte)
  {
    return new SecretKeySpec(b(paramArrayOfByte), "AES").getEncoded();
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte, paramInt1, paramInt2);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new EncryptException(paramArrayOfByte);
    }
  }
  
  protected static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    if (paramArrayOfByte2.length == 0) {
      throw new IllegalArgumentException("empty security key");
    }
    int j = 0;
    int i = 0;
    while (j < paramArrayOfByte1.length)
    {
      arrayOfByte[j] = ((byte)(paramArrayOfByte1[j] ^ paramArrayOfByte2[i]));
      int k = i + 1;
      i = k;
      if (k >= paramArrayOfByte2.length) {
        i = 0;
      }
      j += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  protected byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    CRC32 localCRC32 = new CRC32();
    localCRC32.update(paramArrayOfByte, paramInt1, paramInt2);
    long l = localCRC32.getValue();
    return ByteBuffer.allocate(8).putLong(l).array();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */