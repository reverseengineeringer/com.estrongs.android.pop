package com.estrongs.fs.impl.u;

import java.io.InputStream;
import jcifs.smb.SmbRandomAccessFile;

public class c
  extends InputStream
{
  private SmbRandomAccessFile a = null;
  private long b = 0L;
  private long c = 0L;
  private long d = 0L;
  
  public c(SmbRandomAccessFile paramSmbRandomAccessFile, long paramLong)
  {
    a = paramSmbRandomAccessFile;
    c = paramLong;
  }
  
  public void close()
  {
    a.close();
    super.close();
  }
  
  public int read()
  {
    int i;
    if (c - d == 0L) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      j = a.read();
      i = j;
    } while (j < 0);
    d += 1L;
    return j;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (c == 0L)
    {
      paramInt1 = a.read(paramArrayOfByte, paramInt1, paramInt2);
      paramInt2 = paramInt1;
      if (paramInt1 >= 0)
      {
        d += paramInt1;
        paramInt2 = paramInt1;
      }
      return paramInt2;
    }
    long l = c - d;
    if (l == 0L) {
      return -1;
    }
    if (paramInt2 < l) {}
    for (paramInt1 = a.read(paramArrayOfByte, paramInt1, paramInt2);; paramInt1 = a.read(paramArrayOfByte, paramInt1, (int)l))
    {
      paramInt2 = paramInt1;
      if (paramInt1 < 0) {
        break;
      }
      d += paramInt1;
      return paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.u.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */