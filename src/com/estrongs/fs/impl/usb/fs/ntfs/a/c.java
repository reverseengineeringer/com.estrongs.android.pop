package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.util.Iterator;

final class c
  extends j
  implements a
{
  public c(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public Iterator<g> a()
  {
    byte[] arrayOfByte = new byte[m()];
    a(l(), arrayOfByte, 0, arrayOfByte.length);
    return new d(arrayOfByte, 0, m()).a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */