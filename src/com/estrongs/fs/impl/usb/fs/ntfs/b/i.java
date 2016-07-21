package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.android.util.l;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

class i
  implements Iterator<c>
{
  private final com.estrongs.fs.impl.usb.fs.ntfs.utils.f<c> b = new com.estrongs.fs.impl.usb.fs.ntfs.utils.f();
  private Iterator<c> c;
  private c d;
  
  public i(h paramh)
  {
    if (h.a(paramh)) {
      l.b(h.d(), "FullIndexEntryIterator");
    }
    c = paramh.a().d();
    if (h.a(paramh)) {
      l.b(h.d(), "currentIterator=" + c);
    }
    b();
  }
  
  private void b()
  {
    if (c.hasNext())
    {
      d = ((c)c.next());
      if (d.a())
      {
        if (h.a(a)) {
          l.b(h.d(), "next has subnode");
        }
        b.a(d);
      }
      if (d.d()) {}
    }
    do
    {
      do
      {
        return;
        d = null;
        if (!b.b()) {
          break;
        }
      } while (!h.a(a));
      l.b(h.d(), "end of list");
      return;
      if (h.a(a)) {
        l.b(h.d(), "hasNext: read next indexblock");
      }
      Object localObject = (c)b.a();
      f localf = a.a().a();
      try
      {
        localObject = a.b().a(localf, ((c)localObject).l());
        c = ((b)localObject).b();
      }
      catch (IOException localIOException) {}
    } while (!h.a(a));
    l.a(h.d(), "Cannot read next index block", localIOException);
  }
  
  public c a()
  {
    c localc = d;
    if (localc == null) {
      throw new NoSuchElementException();
    }
    b();
    return localc;
  }
  
  public boolean hasNext()
  {
    return d != null;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */