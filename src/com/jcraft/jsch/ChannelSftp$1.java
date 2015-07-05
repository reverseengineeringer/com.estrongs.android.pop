package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class ChannelSftp$1
  extends OutputStream
{
  byte[] a;
  private boolean c = true;
  private boolean d = false;
  private int[] e = new int[1];
  private int f = 0;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private ChannelSftp.Header j;
  
  ChannelSftp$1(ChannelSftp paramChannelSftp, byte[] paramArrayOfByte, long[] paramArrayOfLong, SftpProgressMonitor paramSftpProgressMonitor)
  {
    j = new ChannelSftp.Header(paramChannelSftp);
    a = new byte[1];
  }
  
  public void close()
  {
    if (d) {
      return;
    }
    flush();
    if (m != null) {
      m.a();
    }
    try
    {
      ChannelSftp.a(b, k, j);
      d = true;
      return;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    catch (Exception localException)
    {
      throw new IOException(localException.toString());
    }
  }
  
  public void flush()
  {
    if (d) {
      throw new IOException("stream already closed");
    }
    if (!c) {
      try
      {
        for (;;)
        {
          if (i <= h) {
            return;
          }
          if (!ChannelSftp.a(b, null, j)) {
            break;
          }
          h += 1;
        }
        return;
      }
      catch (SftpException localSftpException)
      {
        throw new IOException(localSftpException.toString());
      }
    }
  }
  
  public void write(int paramInt)
  {
    a[0] = ((byte)paramInt);
    write(a, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (c)
    {
      f = ChannelSftp.a(b);
      g = ChannelSftp.a(b);
      c = false;
    }
    if (d) {
      throw new IOException("stream already closed");
    }
    int n = paramInt2;
    int i1 = paramInt1;
    paramInt1 = n;
    n = i1;
    if (paramInt1 <= 0) {}
    for (;;)
    {
      try
      {
        if ((m == null) || (m.a(paramInt2))) {
          return;
        }
        close();
        throw new IOException("canceled");
      }
      catch (IOException paramArrayOfByte)
      {
        throw paramArrayOfByte;
        int i2 = ChannelSftp.a(b, k, l[0], paramArrayOfByte, n, paramInt1);
        i += 1;
        long[] arrayOfLong = l;
        arrayOfLong[0] += i2;
        i1 = n + i2;
        i2 = paramInt1 - i2;
        if (ChannelSftp.a(b) - 1 != f)
        {
          n = i1;
          paramInt1 = i2;
          if (ChannelSftp.b(b).available() < 1024) {
            break;
          }
        }
        n = i1;
        paramInt1 = i2;
        if (ChannelSftp.b(b).available() <= 0) {
          break;
        }
        n = i1;
        paramInt1 = i2;
        if (!ChannelSftp.a(b, e, j)) {
          break;
        }
        g = e[0];
        if ((f > g) || (g > ChannelSftp.a(b) - 1)) {
          throw new SftpException(4, "");
        }
      }
      catch (Exception paramArrayOfByte)
      {
        throw new IOException(paramArrayOfByte.toString());
      }
      h += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */