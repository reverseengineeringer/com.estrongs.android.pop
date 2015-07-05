package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.b.c;
import java.io.IOException;

public final class u
  extends n
{
  private static final String c = u.class.getSimpleName();
  private long d;
  
  public u(ab paramab, byte[] paramArrayOfByte, int paramInt)
  {
    super(paramab, 0L, paramArrayOfByte, paramInt);
  }
  
  public n a(c paramc)
  {
    return c(paramc.h());
  }
  
  public byte[] a(long paramLong)
  {
    int i = r().a().c();
    paramLong = i * paramLong;
    if (i + paramLong > n()) {
      throw new IOException("Attempt to read past the end of the MFT, offset: " + paramLong);
    }
    byte[] arrayOfByte = new byte[i];
    a(paramLong, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public n b(long paramLong)
  {
    return new n(r(), paramLong, a(paramLong), 0);
  }
  
  public n c(long paramLong)
  {
    n localn = b(paramLong);
    localn.a();
    return localn;
  }
  
  public long n()
  {
    if (d == 0L) {
      d = b(128, null);
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */