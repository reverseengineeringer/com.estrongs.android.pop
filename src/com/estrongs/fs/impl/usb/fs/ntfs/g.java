package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.b.c;
import com.estrongs.fs.impl.usb.fs.ntfs.b.h;
import java.util.Iterator;

final class g
  implements Iterator<i>
{
  private final Iterator<c> a;
  private final y b;
  private w c;
  
  public g(y paramy, h paramh)
  {
    b = paramy;
    a = paramh.c();
    b();
  }
  
  private final void b()
  {
    c localc;
    do
    {
      if (!a.hasNext())
      {
        c = null;
        return;
      }
      localc = (c)a.next();
    } while (localc.e() == 2);
    c = new w(b, localc);
  }
  
  public i a()
  {
    w localw = c;
    b();
    return localw;
  }
  
  public boolean hasNext()
  {
    return c != null;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */