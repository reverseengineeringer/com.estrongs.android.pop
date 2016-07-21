package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.a.h;

class t
  extends q
{
  private int b = a.d();
  
  private t(n paramn)
  {
    super(paramn);
  }
  
  public h a()
  {
    int i = b;
    if (a.h(i + 0) == -1) {}
    h localh;
    do
    {
      return null;
      localh = h.a(a, i);
      if (n.a(a)) {
        l.b(n.m(), "Attribute: " + localh);
      }
      i = a.h(i + 4);
      if (i > 0) {
        break;
      }
    } while (!n.a(a));
    l.b(n.m(), "Non-positive offset, preventing infinite loop.  Data on disk may be corrupt.  referenceNumber = " + n.b(a));
    return null;
    b += i;
    return localh;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */