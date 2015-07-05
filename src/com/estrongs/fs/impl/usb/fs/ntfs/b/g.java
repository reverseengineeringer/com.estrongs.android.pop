package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.fs.impl.usb.fs.ntfs.a.j;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.util.Iterator;

public final class g
  extends j
{
  private f a;
  private e b;
  
  public g(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public f a()
  {
    if (a == null) {
      a = new f(this);
    }
    return a;
  }
  
  public e b()
  {
    if (b == null) {
      b = new e(this);
    }
    return b;
  }
  
  public Iterator<c> d()
  {
    int i = l();
    return new d(j(), this, i + 16 + b().a());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */