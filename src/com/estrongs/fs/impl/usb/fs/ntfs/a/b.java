package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.ab;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.util.Iterator;

public class b
  extends i
  implements a
{
  private static final String a = b.class.getSimpleName();
  private boolean b = false;
  
  public b(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public Iterator<g> a()
  {
    int i = p();
    if (b) {
      l.b(a, String.format("Allocating %d clusters for non-resident attribute", new Object[] { Integer.valueOf(i) }));
    }
    byte[] arrayOfByte = new byte[j().r().b() * i];
    a(b(), arrayOfByte, 0, i);
    return new d(arrayOfByte, 0, n()).a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */