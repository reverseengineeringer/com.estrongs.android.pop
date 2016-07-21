package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.a.h;
import com.estrongs.fs.impl.usb.fs.ntfs.utils.e;
import java.util.Iterator;

class p
  extends s
{
  p(n paramn, Iterator paramIterator, int paramInt, String paramString)
  {
    super(paramn, paramIterator, null);
  }
  
  protected boolean a(h paramh)
  {
    if (paramh.e() == a)
    {
      paramh = paramh.i();
      if (b == null)
      {
        if (paramh != null) {}
      }
      else {
        while (b.equals(paramh))
        {
          if (n.a(c)) {
            l.b(n.m(), "findAttributesByTypeAndName(0x" + e.a(a, 4) + "," + b + ") found");
          }
          return true;
        }
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */