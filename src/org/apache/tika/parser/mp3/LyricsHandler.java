package org.apache.tika.parser.mp3;

import java.io.InputStream;

public class LyricsHandler
{
  boolean foundLyrics = false;
  ID3v1Handler id3v1 = null;
  String lyricsText = null;
  
  public LyricsHandler(InputStream paramInputStream)
  {
    this(getSuffix(paramInputStream, 10368));
  }
  
  protected LyricsHandler(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 128) {}
    for (;;)
    {
      return;
      Object localObject = new byte[''];
      System.arraycopy(paramArrayOfByte, paramArrayOfByte.length - 128, localObject, 0, 128);
      id3v1 = new ID3v1Handler((byte[])localObject);
      if (paramArrayOfByte.length >= 137)
      {
        int j = paramArrayOfByte.length - 9;
        int i = j;
        if (id3v1.found) {
          i = j - 128;
        }
        if ((paramArrayOfByte[(i + 0)] == 76) && (paramArrayOfByte[(i + 1)] == 89) && (paramArrayOfByte[(i + 2)] == 82) && (paramArrayOfByte[(i + 3)] == 73) && (paramArrayOfByte[(i + 4)] == 67) && (paramArrayOfByte[(i + 5)] == 83) && (paramArrayOfByte[(i + 6)] == 50) && (paramArrayOfByte[(i + 7)] == 48) && (paramArrayOfByte[(i + 8)] == 48))
        {
          foundLyrics = true;
          j = Integer.parseInt(new String(paramArrayOfByte, i - 6, 6));
          paramArrayOfByte = new String(paramArrayOfByte, i - j + 5, j - 11, "ASCII");
          i = 0;
          while (i < paramArrayOfByte.length() - 8)
          {
            localObject = paramArrayOfByte.substring(i, i + 3);
            j = Integer.parseInt(paramArrayOfByte.substring(i + 3, i + 8));
            int k = i + 8;
            j = k + j;
            i = j;
            if (((String)localObject).equals("LYR"))
            {
              lyricsText = paramArrayOfByte.substring(k, j);
              i = j;
            }
          }
        }
      }
    }
  }
  
  protected static byte[] getSuffix(InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt * 2];
    int j = paramInputStream.read(arrayOfByte);
    int i = 0;
    while (j != -1)
    {
      j = i + j;
      i = j;
      if (j == arrayOfByte.length)
      {
        System.arraycopy(arrayOfByte, j - paramInt, arrayOfByte, 0, paramInt);
        i = paramInt;
      }
      j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
    }
    j = paramInt;
    if (i < paramInt) {
      j = i;
    }
    paramInputStream = new byte[j];
    System.arraycopy(arrayOfByte, i - j, paramInputStream, 0, j);
    return paramInputStream;
  }
  
  public boolean hasID3v1()
  {
    return (id3v1 != null) && (id3v1.found);
  }
  
  public boolean hasLyrics()
  {
    return (lyricsText != null) && (lyricsText.length() > 0);
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.LyricsHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */