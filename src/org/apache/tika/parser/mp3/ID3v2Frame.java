package org.apache.tika.parser.mp3;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class ID3v2Frame
  implements MP3Frame
{
  protected static final ID3v2Frame.TextEncoding[] encodings = { new ID3v2Frame.TextEncoding("GBK", false, null), new ID3v2Frame.TextEncoding("UTF-16", true, null), new ID3v2Frame.TextEncoding("UTF-16BE", true, null), new ID3v2Frame.TextEncoding("UTF-8", false, null) };
  private byte[] data;
  private byte[] extendedHeader;
  private int flags;
  private int length;
  private int majorVersion;
  private int minorVersion;
  
  private ID3v2Frame(int paramInt1, int paramInt2, InputStream paramInputStream)
  {
    majorVersion = paramInt1;
    minorVersion = paramInt2;
    flags = paramInputStream.read();
    length = get7BitsInt(readFully(paramInputStream, 4), 0);
    if ((flags & 0x2) == 2) {
      extendedHeader = readFully(paramInputStream, getInt(readFully(paramInputStream, 4)));
    }
    data = readFully(paramInputStream, length, false);
  }
  
  public static MP3Frame createFrameIfPresent(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    int j = paramInputStream.read();
    int k = paramInputStream.read();
    if ((i == 73) && (j == 68) && (k == 51))
    {
      i = paramInputStream.read();
      j = paramInputStream.read();
      if ((i != -1) && (j != -1)) {}
    }
    int m;
    do
    {
      return null;
      return new ID3v2Frame(i, j, paramInputStream);
      m = paramInputStream.read();
    } while (!AudioFrame.isAudioHeader(i, j, k, m));
    return new AudioFrame(i, j, k, m, paramInputStream);
  }
  
  protected static int get7BitsInt(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[(paramInt + 0)] & 0x7F) << 21) + ((paramArrayOfByte[(paramInt + 1)] & 0x7F) << 14) + ((paramArrayOfByte[(paramInt + 2)] & 0x7F) << 7) + ((paramArrayOfByte[(paramInt + 3)] & 0x7F) << 0);
  }
  
  protected static ID3Tags.ID3Comment getComment(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte[paramInt1];
    ID3v2Frame.TextEncoding localTextEncoding;
    String str2;
    int k;
    if ((i >= 0) && (i < encodings.length))
    {
      localTextEncoding = encodings[i];
      str2 = getString(paramArrayOfByte, paramInt1 + 1, 3);
      k = paramInt1 + 4;
      i = k;
    }
    for (;;)
    {
      if (i < paramInt1 + paramInt2) {}
      for (;;)
      {
        try
        {
          int j;
          if ((doubleByte) && (paramArrayOfByte[i] == 0) && (paramArrayOfByte[(i + 1)] == 0))
          {
            j = i;
            if (i + 2 < paramInt1 + paramInt2)
            {
              j = i;
              if (paramArrayOfByte[(i + 1)] == 0)
              {
                j = i;
                if (paramArrayOfByte[(i + 2)] == 0) {
                  j = i + 1;
                }
              }
            }
            i = j + 2;
            str1 = new String(paramArrayOfByte, k, j - k, encoding);
            if (i > -1)
            {
              paramArrayOfByte = new String(paramArrayOfByte, i, paramInt1 + paramInt2 - i, encoding);
              return new ID3Tags.ID3Comment(str2, str1, paramArrayOfByte);
            }
          }
          else
          {
            if ((doubleByte) || (paramArrayOfByte[i] != 0)) {
              break;
            }
            j = i + 1;
            str1 = new String(paramArrayOfByte, k, i - k, encoding);
            i = j;
            continue;
          }
          paramArrayOfByte = new String(paramArrayOfByte, k, paramInt1 + paramInt2 - k, encoding);
          continue;
          String str1 = null;
        }
        catch (UnsupportedEncodingException paramArrayOfByte)
        {
          throw new RuntimeException("Core encoding " + encoding + " is not available", paramArrayOfByte);
        }
        i = -1;
      }
      return null;
      i += 1;
    }
  }
  
  protected static int getInt(byte[] paramArrayOfByte)
  {
    return getInt(paramArrayOfByte, 0);
  }
  
  protected static int getInt(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[(paramInt + 0)] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + ((paramArrayOfByte[(paramInt + 3)] & 0xFF) << 0);
  }
  
  protected static int getInt2(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[(paramInt + 0)] & 0xFF) << 8) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 0);
  }
  
  protected static int getInt3(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[(paramInt + 0)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 0);
  }
  
  protected static String getString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, paramInt1, paramInt2, "ISO-8859-1");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new RuntimeException("Core encoding ISO-8859-1 encoding is not available", paramArrayOfByte);
    }
  }
  
  protected static String getTagString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return "";
    }
    if ((paramInt2 == 1) && (paramArrayOfByte[paramInt1] == 0)) {
      return "";
    }
    ID3v2Frame.TextEncoding localTextEncoding2 = encodings[0];
    int k = paramArrayOfByte[paramInt1];
    ID3v2Frame.TextEncoding localTextEncoding1 = localTextEncoding2;
    int j = paramInt1;
    int i = paramInt2;
    if (k >= 0)
    {
      localTextEncoding1 = localTextEncoding2;
      j = paramInt1;
      i = paramInt2;
      if (k < encodings.length)
      {
        j = paramInt1 + 1;
        i = paramInt2 - 1;
        localTextEncoding1 = encodings[k];
      }
    }
    for (;;)
    {
      paramInt1 = i;
      if (!doubleByte) {
        break;
      }
      paramInt1 = i;
      if (i < 2) {
        break;
      }
      paramInt1 = i;
      if (paramArrayOfByte[(j + i - 1)] != 0) {
        break;
      }
      paramInt1 = i;
      if (paramArrayOfByte[(j + i - 2)] != 0) {
        break;
      }
      i -= 2;
    }
    while ((!doubleByte) && (paramInt1 >= 1) && (paramArrayOfByte[(j + paramInt1 - 1)] == 0)) {
      paramInt1 -= 1;
    }
    if (paramInt1 == 0) {
      return "";
    }
    if ((encoding.equals("UTF-16")) && (paramInt1 == 2) && (((paramArrayOfByte[j] == -1) && (paramArrayOfByte[(j + 1)] == -2)) || ((paramArrayOfByte[j] == -2) && (paramArrayOfByte[(j + 1)] == -1)))) {
      return "";
    }
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, j, paramInt1, encoding);
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new RuntimeException("Core encoding " + encoding + " is not available", paramArrayOfByte);
    }
  }
  
  protected static byte[] readFully(InputStream paramInputStream, int paramInt)
  {
    return readFully(paramInputStream, paramInt, true);
  }
  
  protected static byte[] readFully(InputStream paramInputStream, int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1)
      {
        if (!paramBoolean) {
          break;
        }
        throw new IOException("Tried to read " + paramInt + " bytes, but only " + i + " bytes present");
      }
      i += j;
    }
    return arrayOfByte;
  }
  
  public byte[] getData()
  {
    return data;
  }
  
  public byte[] getExtendedHeader()
  {
    return extendedHeader;
  }
  
  public int getFlags()
  {
    return flags;
  }
  
  public int getLength()
  {
    return length;
  }
  
  public int getMajorVersion()
  {
    return majorVersion;
  }
  
  public int getMinorVersion()
  {
    return minorVersion;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v2Frame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */