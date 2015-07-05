package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.fs.impl.usb.fs.ntfs.a.i;
import com.estrongs.fs.impl.usb.fs.ntfs.ab;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.io.IOException;

public final class a
  extends i
{
  public a(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public b a(f paramf, long paramLong)
  {
    n localn = j();
    int j = paramf.a();
    int k = j / paramf.b();
    int i = localn.r().b();
    long l = k * paramLong / i;
    j = (j - 1) / i + 1;
    k = (int)(k * paramLong % i);
    paramf = new byte[j * i];
    i = a(l, paramf, 0, j);
    if (i != j) {
      throw new IOException("Number of clusters read was not the number requested (requested " + j + ", read " + i + ")");
    }
    return new b(localn, paramf, k);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */