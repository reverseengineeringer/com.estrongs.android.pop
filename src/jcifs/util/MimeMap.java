package jcifs.util;

import java.io.IOException;
import java.io.InputStream;

public class MimeMap
{
  private static final int IN_SIZE = 7000;
  private static final int ST_COMM = 2;
  private static final int ST_EXT = 5;
  private static final int ST_GAP = 4;
  private static final int ST_START = 1;
  private static final int ST_TYPE = 3;
  private byte[] in = new byte['᭘'];
  private int inLen;
  
  public MimeMap()
  {
    InputStream localInputStream = getClass().getClassLoader().getResourceAsStream("jcifs/util/mime.map");
    int i;
    for (inLen = 0;; inLen = (i + inLen))
    {
      i = localInputStream.read(in, inLen, 7000 - inLen);
      if (i == -1) {
        break;
      }
    }
    if ((inLen < 100) || (inLen == 7000)) {
      throw new IOException("Error reading jcifs/util/mime.map resource");
    }
    localInputStream.close();
  }
  
  public String getMimeType(String paramString)
  {
    return getMimeType(paramString, "application/octet-stream");
  }
  
  public String getMimeType(String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = new byte[''];
    byte[] arrayOfByte2 = new byte[16];
    byte[] arrayOfByte3 = paramString1.toLowerCase().getBytes("ASCII");
    int i3 = 0;
    int i2 = 0;
    int n = 1;
    int i1 = 0;
    paramString1 = paramString2;
    int i;
    int m;
    int k;
    if (i2 < inLen)
    {
      i = in[i2];
      j = n;
      switch (n)
      {
      default: 
        j = n;
        m = i1;
        k = i3;
      case 1: 
        for (;;)
        {
          i2 += 1;
          i3 = k;
          i1 = m;
          n = j;
          break;
          k = i3;
          m = i1;
          j = n;
          if (i != 32)
          {
            k = i3;
            m = i1;
            j = n;
            if (i != 9)
            {
              if (i != 35) {
                break label185;
              }
              j = 2;
              k = i3;
              m = i1;
            }
          }
        }
      }
    }
    label185:
    for (int j = 3;; j = n)
    {
      if ((i == 32) || (i == 9))
      {
        j = 4;
        k = i3;
        m = i1;
        break;
      }
      arrayOfByte1[i1] = i;
      m = i1 + 1;
      k = i3;
      break;
      k = i3;
      m = i1;
      j = n;
      if (i != 10) {
        break;
      }
      k = 0;
      j = 1;
      m = 0;
      break;
      k = i3;
      m = i1;
      j = n;
      if (i == 32) {
        break;
      }
      k = i3;
      m = i1;
      j = n;
      if (i == 9) {
        break;
      }
      j = 5;
      switch (i)
      {
      default: 
        arrayOfByte2[i3] = i;
        k = i3 + 1;
        m = i1;
        break;
      case 9: 
      case 10: 
      case 32: 
      case 35: 
        k = 0;
        while ((k < i3) && (i3 == arrayOfByte3.length) && (arrayOfByte2[k] == arrayOfByte3[k])) {
          k += 1;
        }
        if (k == arrayOfByte3.length)
        {
          paramString1 = new String(arrayOfByte1, 0, i1, "ASCII");
          return paramString1;
        }
        if (i == 35)
        {
          j = 2;
          m = i1;
        }
        for (;;)
        {
          k = 0;
          break;
          if (i == 10)
          {
            m = 0;
            j = 1;
          }
          else
          {
            m = i1;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.util.MimeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */