package com.estrongs.io.archive.aeszip;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;

final class g
  extends FilterInputStream
{
  private final Checksum b = new CRC32();
  private final byte[] c = new byte[1];
  private final Inflater d = a.e();
  private final byte[] e;
  private final ZipEntry f;
  private boolean g;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public g(InputStream paramInputStream, ZipEntry paramZipEntry, int paramInt)
  {
    super(paramInputStream);
    e = new byte[paramInt];
    f = paramZipEntry;
  }
  
  private void a()
  {
    if (g) {
      throw new IOException("input stream has been closed");
    }
  }
  
  public void close()
  {
    if (g) {}
    for (;;)
    {
      return;
      try
      {
        do
        {
          l1 = skip(Long.MAX_VALUE);
        } while (l1 > 0L);
        g = true;
        a.a(d);
        super.close();
        long l1 = f.getCrc();
        long l2 = b.getValue();
        if (l1 == l2) {
          continue;
        }
        a.a(f.getName(), l1, l2);
        return;
      }
      finally
      {
        g = true;
        a.a(d);
        super.close();
      }
    }
  }
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    int i;
    do
    {
      i = read(c, 0, 1);
    } while (i == 0);
    if (i > 0) {
      return c[0] & 0xFF;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return 0;
    }
    a();
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    int i = paramInt1 + paramInt2;
    if ((paramArrayOfByte.length - i | paramInt1 | paramInt2 | i) < 0) {
      throw new IndexOutOfBoundsException();
    }
    paramInt2 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 >= 0) {
      d.setInput(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      try
      {
        paramInt1 = d.inflate(e, 0, e.length);
        if (paramInt1 <= 0) {
          break;
        }
        b.update(e, 0, paramInt1);
        continue;
        IOException localIOException;
        paramArrayOfByte[paramInt1] = 0;
      }
      catch (DataFormatException paramArrayOfByte)
      {
        localIOException = new IOException(paramArrayOfByte.toString());
        localIOException.initCause(paramArrayOfByte);
        throw localIOException;
      }
      d.setInput(paramArrayOfByte, paramInt1, 1);
    }
    if ((!a) && (paramInt2 < 0) && (!d.finished())) {
      throw new AssertionError();
    }
    if ((!a) && (paramInt2 >= 0) && (!d.needsInput())) {
      throw new AssertionError();
    }
    if ((!a) && (d.needsDictionary())) {
      throw new AssertionError();
    }
    return paramInt2;
  }
  
  public void reset()
  {
    throw new IOException("mark()/reset() not supported");
  }
  
  public long skip(long paramLong)
  {
    return a.a(this, paramLong, new byte[e.length]);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */