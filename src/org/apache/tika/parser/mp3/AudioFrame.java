package org.apache.tika.parser.mp3;

import java.io.InputStream;
import org.xml.sax.ContentHandler;

public class AudioFrame
  implements MP3Frame
{
  private int channels;
  private int sampleRate;
  private String version;
  
  public AudioFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4, InputStream paramInputStream)
  {
    int m = paramInt1;
    int k = paramInt2;
    int j = paramInt3;
    int i = paramInt4;
    if (paramInt1 == -2)
    {
      m = paramInt1;
      k = paramInt2;
      j = paramInt3;
      i = paramInt4;
      if (paramInt2 == -2)
      {
        m = paramInt1;
        k = paramInt2;
        j = paramInt3;
        i = paramInt4;
        if (paramInt3 == -2)
        {
          m = paramInt1;
          k = paramInt2;
          j = paramInt3;
          i = paramInt4;
          if (paramInt4 == -2)
          {
            m = paramInputStream.read();
            k = paramInputStream.read();
            j = paramInputStream.read();
            i = paramInputStream.read();
          }
        }
      }
    }
    if (isAudioHeader(m, k, j, i))
    {
      version = "MPEG 3 Layer ";
      paramInt1 = k >> 1 & 0x3;
      if (paramInt1 == 1)
      {
        version += "III";
        version += " Version ";
        paramInt1 = k >> 3 & 0x3;
        if (paramInt1 != 0) {
          break label395;
        }
        version += "2.5";
        label230:
        switch (j >> 2 & 0x3)
        {
        default: 
          sampleRate = 8000;
          label267:
          if (paramInt1 == 2) {
            sampleRate *= 2;
          }
          break;
        }
      }
      for (;;)
      {
        if ((i & 0x192) >= 3) {
          break label530;
        }
        channels = 2;
        return;
        if (paramInt1 == 2)
        {
          version += "II";
          break;
        }
        if (paramInt1 == 3)
        {
          version += "I";
          break;
        }
        version += "(reserved)";
        break;
        label395:
        if (paramInt1 == 2)
        {
          version += "2";
          break label230;
        }
        if (paramInt1 == 3)
        {
          version += "1";
          break label230;
        }
        version += "(reseved)";
        break label230;
        sampleRate = 11025;
        break label267;
        sampleRate = 12000;
        break label267;
        if (paramInt1 == 3) {
          sampleRate *= 4;
        }
      }
      label530:
      channels = 1;
      return;
    }
    throw new IllegalArgumentException("Magic Audio Frame Header not found");
  }
  
  public AudioFrame(InputStream paramInputStream, ContentHandler paramContentHandler)
  {
    this(-2, -2, -2, -2, paramInputStream);
  }
  
  public static boolean isAudioHeader(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 == -1) || (paramInt2 == -1) || (paramInt3 == -1) || (paramInt4 == -1)) {}
    while ((paramInt1 != 255) || ((paramInt2 & 0x60) != 96)) {
      return false;
    }
    return true;
  }
  
  public int getChannels()
  {
    return channels;
  }
  
  public int getSampleRate()
  {
    return sampleRate;
  }
  
  public String getVersion()
  {
    return version;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.AudioFrame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */