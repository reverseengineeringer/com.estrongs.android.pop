package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.a.h;
import java.util.Iterator;

abstract class s
  extends q
{
  private Iterator<h> a;
  
  private s(Iterator<h> paramIterator)
  {
    super(paramIterator);
    Iterator localIterator;
    a = localIterator;
  }
  
  public h a()
  {
    while (a.hasNext())
    {
      h localh = (h)a.next();
      if (a(localh)) {
        return localh;
      }
    }
    return null;
  }
  
  protected abstract boolean a(h paramh);
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */