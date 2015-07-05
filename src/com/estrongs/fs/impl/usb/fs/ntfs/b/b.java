package com.estrongs.fs.impl.usb.fs.ntfs.b;

import com.estrongs.fs.impl.usb.fs.ntfs.n;
import com.estrongs.fs.impl.usb.fs.ntfs.z;
import java.util.Iterator;

final class b
  extends z
{
  private e a;
  private final n b;
  
  public b(n paramn, byte[] paramArrayOfByte, int paramInt)
  {
    super(paramn.r(), paramArrayOfByte, paramInt);
    b = paramn;
  }
  
  public e a()
  {
    if (a == null) {
      a = new e(this, 24);
    }
    return a;
  }
  
  public Iterator<c> b()
  {
    return new d(b, this, a().a() + 24);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */