package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.io.IOException;
import java.util.Iterator;

public final class h
{
  private static final String a = h.class.getSimpleName();
  private boolean b = false;
  private final n c;
  private g d;
  private a e;
  
  public h(n paramn)
  {
    c = paramn;
    if (!paramn.c()) {
      throw new IOException("fileRecord is not a directory");
    }
  }
  
  public g a()
  {
    if (d == null)
    {
      d = ((g)c.b(144));
      if (b) {
        l.b(a, "getIndexRootAttribute: " + d);
      }
    }
    return d;
  }
  
  public a b()
  {
    if (e == null) {
      e = ((a)c.b(160));
    }
    return e;
  }
  
  public Iterator<c> c()
  {
    if (b) {
      l.b(a, "iterator");
    }
    return new i(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */