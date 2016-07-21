package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.a.a;
import com.estrongs.fs.impl.usb.fs.ntfs.a.g;
import com.estrongs.fs.impl.usb.fs.ntfs.a.h;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class r
  extends q
{
  private Iterator<g> b;
  
  private r(n paramn)
  {
    super(paramn);
    try
    {
      b = a.a();
      return;
    }
    catch (IOException localIOException)
    {
      l.c(n.m(), "Error getting attributes from attribute list, file record " + paramn, localIOException);
      b = Collections.emptyList().iterator();
    }
  }
  
  public h a()
  {
    Object localObject = new HashSet();
    if (b.hasNext())
    {
      g localg = (g)b.next();
      int i = localg.d();
      if (((Set)localObject).contains(Integer.valueOf(i))) {
        throw new IllegalStateException("Hit the same attribute ID more than once, aborting. ref = 0x" + Long.toHexString(localg.c()) + " id=" + i);
      }
      ((Set)localObject).add(Integer.valueOf(i));
      try
      {
        if (localg.c() == n.b(a)) {}
        for (localObject = a;; localObject = a.r().c().c(localg.c()))
        {
          localObject = n.a((n)localObject, localg.d());
          if (!n.a(a)) {
            break;
          }
          l.b(n.m(), "Attribute: " + localObject);
          break;
          if (n.a(a)) {
            l.b(n.m(), "Looking up MFT entry for: " + localg.c());
          }
        }
        return null;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException("Error getting MFT or FileRecord for attribute in list, ref = 0x" + Long.toHexString(localg.c()), localIOException);
      }
    }
    return localIOException;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */