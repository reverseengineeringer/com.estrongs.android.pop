package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.fs.impl.usb.fs.ntfs.aa;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class d
  implements Iterator<c>
{
  private int a;
  private c b;
  private final aa c;
  private final n d;
  
  public d(n paramn, aa paramaa, int paramInt)
  {
    a = paramInt;
    d = paramn;
    c = paramaa;
    b();
  }
  
  private void b()
  {
    b = new c(d, c, a);
    try
    {
      if ((b.d()) && (!b.a())) {
        b = null;
      }
      return;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      b = null;
    }
  }
  
  public c a()
  {
    if (b == null) {
      throw new NoSuchElementException();
    }
    c localc = b;
    int i = b.b();
    if (i <= 0) {
      throw new IllegalStateException(String.format("Index entry size is 0, filesystem is corrupt.  Parent directory: '%s', reference number '%d'", new Object[] { b.k().i(), Long.valueOf(b.k().f()) }));
    }
    a = (i + a);
    b();
    return localc;
  }
  
  public boolean hasNext()
  {
    if (b == null) {}
    while ((b.d()) && (!b.a())) {
      return false;
    }
    return true;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */