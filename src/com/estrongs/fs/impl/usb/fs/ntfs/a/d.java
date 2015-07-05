package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.fs.impl.usb.fs.ntfs.aa;
import java.util.Iterator;

public final class d
  extends aa
{
  private static final String a = d.class.getSimpleName();
  private boolean b = false;
  private long c;
  
  public d(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    super(paramArrayOfByte, paramInt);
    c = paramLong;
  }
  
  public Iterator<g> a()
  {
    return new f(this, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */