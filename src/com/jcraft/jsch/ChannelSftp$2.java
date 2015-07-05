package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;

class ChannelSftp$2
  extends InputStream
{
  long a;
  boolean b;
  int c;
  byte[] d;
  byte[] e;
  ChannelSftp.Header f;
  int g;
  long h;
  
  ChannelSftp$2(ChannelSftp paramChannelSftp, long paramLong, SftpProgressMonitor paramSftpProgressMonitor, byte[] paramArrayOfByte)
  {
    a = paramLong;
    b = false;
    c = 0;
    d = new byte[1];
    e = new byte['Ѐ'];
    f = new ChannelSftp.Header(paramChannelSftp);
    g = 1;
    h = a;
  }
  
  public void close()
  {
    if (b) {
      return;
    }
    b = true;
    if (j != null) {
      j.a();
    }
    ChannelSftp.e(i).a(f, ChannelSftp.c(i));
    try
    {
      ChannelSftp.a(i, k, f);
      return;
    }
    catch (Exception localException)
    {
      throw new IOException("error");
    }
  }
  
  public int read()
  {
    if (b) {}
    while (read(d, 0, 1) == -1) {
      return -1;
    }
    return d[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    if (b) {
      return -1;
    }
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int n = 0;
    if (b)
    {
      paramInt1 = -1;
      return paramInt1;
    }
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return 0;
    }
    int m;
    if (c > 0)
    {
      m = c;
      if (m <= paramInt2) {
        break label935;
      }
    }
    for (;;)
    {
      System.arraycopy(e, 0, paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 != c) {
        System.arraycopy(e, paramInt2, e, 0, c - paramInt2);
      }
      if ((j != null) && (!j.a(paramInt2)))
      {
        close();
        return -1;
      }
      c -= paramInt2;
      return paramInt2;
      m = paramInt2;
      if (ci).b.length - 13 < paramInt2) {
        m = ci).b.length - 13;
      }
      paramInt2 = m;
      if (ChannelSftp.d(i) == 0)
      {
        paramInt2 = m;
        if (m > 1024) {
          paramInt2 = 1024;
        }
      }
      if (ChannelSftp.e(i).b() == 0)
      {
        m = ci).b.length - 13;
        if (ChannelSftp.d(i) == 0) {
          m = 1024;
        }
      }
      int i1;
      ChannelSftp.RequestQueue.Request localRequest;
      for (;;)
      {
        if (ChannelSftp.e(i).b() >= g)
        {
          f = ChannelSftp.a(i, ChannelSftp.c(i), f);
          c = f.a;
          m = f.b;
          i1 = f.c;
        }
        for (;;)
        {
          try
          {
            localRequest = ChannelSftp.e(i).a(f.c);
            if ((m == 101) || (m == 103)) {
              break label495;
            }
            throw new IOException("error");
          }
          catch (ChannelSftp.RequestQueue.OutOfOrderException paramArrayOfByte)
          {
            h = offset;
            skip(f.a);
            ChannelSftp.e(i).a(f, ChannelSftp.c(i));
            return 0;
          }
          catch (SftpException paramArrayOfByte)
          {
            throw new IOException("error: " + paramArrayOfByte.toString());
          }
          try
          {
            ChannelSftp.a(i, k, h, m, ChannelSftp.e(i));
            h += m;
          }
          catch (Exception paramArrayOfByte)
          {
            throw new IOException("error");
          }
        }
      }
      label495:
      if (m == 101)
      {
        ChannelSftp.a(i, ChannelSftp.c(i), c);
        paramInt1 = ChannelSftp.c(i).d();
        c = 0;
        if (paramInt1 == 1)
        {
          close();
          return -1;
        }
        throw new IOException("error");
      }
      ChannelSftp.c(i).m();
      ChannelSftp.a(i, ci).b, 0, 4);
      m = ChannelSftp.c(i).d();
      c -= 4;
      int i3 = c - m;
      a += m;
      if (m > 0) {
        if (m <= paramInt2) {
          break label929;
        }
      }
      for (;;)
      {
        i1 = ChannelSftp.b(i).read(paramArrayOfByte, paramInt1, paramInt2);
        if (i1 < 0) {
          return -1;
        }
        int i2 = m - i1;
        c = i2;
        if (i2 > 0)
        {
          paramInt1 = i2;
          paramInt2 = n;
          if (e.length < i2)
          {
            e = new byte[i2];
            paramInt2 = n;
            paramInt1 = i2;
          }
        }
        for (;;)
        {
          if (paramInt1 <= 0) {}
          do
          {
            if (i3 > 0) {
              ChannelSftp.b(i).skip(i3);
            }
            if (m < c) {
              ChannelSftp.e(i).a(f, ChannelSftp.c(i));
            }
            try
            {
              ChannelSftp.a(i, k, b + m, (int)(c - m), ChannelSftp.e(i));
              h = (b + c);
              if (g < ChannelSftp.e(i).c()) {
                g += 1;
              }
              paramInt1 = i1;
              if (j == null) {
                break;
              }
              paramInt1 = i1;
              if (j.a(i1)) {
                break;
              }
              close();
              return -1;
            }
            catch (Exception paramArrayOfByte)
            {
              throw new IOException("error");
            }
            n = ChannelSftp.b(i).read(e, paramInt2, paramInt1);
          } while (n <= 0);
          paramInt2 += n;
          paramInt1 -= n;
        }
        return 0;
        label929:
        paramInt2 = m;
      }
      label935:
      paramInt2 = m;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */