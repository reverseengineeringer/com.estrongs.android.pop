package com.estrongs.io.archive.aeszip;

import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import java.util.zip.ZipEntry;

final class c
  extends CheckedInputStream
{
  private final ZipEntry a;
  private final int b;
  
  public c(InputStream paramInputStream, ZipEntry paramZipEntry, int paramInt)
  {
    super(paramInputStream, new CRC32());
    a = paramZipEntry;
    b = paramInt;
  }
  
  public void close()
  {
    try
    {
      do
      {
        l1 = skip(Long.MAX_VALUE);
      } while (l1 > 0L);
      super.close();
      long l1 = a.getCrc();
      long l2 = getChecksum().getValue();
      if (l1 != l2) {
        a.a(a.getName(), l1, l2);
      }
      return;
    }
    finally
    {
      super.close();
    }
  }
  
  public long skip(long paramLong)
  {
    return a.a(this, paramLong, new byte[b]);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */