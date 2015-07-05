package org.apache.commons.net.io;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class ToNetASCIIInputStream
  extends FilterInputStream
{
  private static final int __LAST_WAS_CR = 1;
  private static final int __LAST_WAS_NL = 2;
  private static final int __NOTHING_SPECIAL = 0;
  private int __status = 0;
  
  public ToNetASCIIInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public int available()
  {
    int j = in.available();
    int i = j;
    if (__status == 2) {
      i = j + 1;
    }
    return i;
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    if (__status == 2)
    {
      __status = 0;
      return 10;
    }
    int i = in.read();
    switch (i)
    {
    }
    do
    {
      __status = 0;
      return i;
      __status = 1;
      return 13;
    } while (__status == 1);
    __status = 2;
    return 13;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 1;
    if (paramInt2 < 1) {
      return 0;
    }
    int j = available();
    if (paramInt2 > j) {
      paramInt2 = j;
    }
    for (;;)
    {
      if (paramInt2 < 1) {
        paramInt2 = i;
      }
      for (;;)
      {
        i = read();
        if (i == -1) {
          return -1;
        }
        int k;
        for (j = paramInt1;; j = k)
        {
          k = j + 1;
          paramArrayOfByte[j] = ((byte)i);
          paramInt2 -= 1;
          if (paramInt2 > 0)
          {
            i = read();
            if (i != -1) {}
          }
          else
          {
            return k - paramInt1;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.ToNetASCIIInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */