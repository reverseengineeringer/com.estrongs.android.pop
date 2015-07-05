package com.estrongs.fs.impl.usb.fs.ntfs.a;

import android.util.Log;
import java.util.Iterator;
import java.util.NoSuchElementException;

class f
  implements Iterator<g>
{
  private g b;
  private int c = 0;
  
  private f(d paramd) {}
  
  public g a()
  {
    if (hasNext())
    {
      g localg = b;
      b = null;
      return localg;
    }
    throw new NoSuchElementException("Iterator has no more entries");
  }
  
  public boolean hasNext()
  {
    if (b != null) {
      return true;
    }
    if (c + 4 > d.a(a)) {
      return false;
    }
    int i = a.e(c + 4);
    if (i <= 0)
    {
      Log.e(d.b(), "Invalid attribute length, preventing infinite loop. Data on disk may be corrupt.");
      return false;
    }
    b = new g(a, c);
    if (d.b(a)) {
      Log.d(d.b(), b.toString());
    }
    c += i;
    return true;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */