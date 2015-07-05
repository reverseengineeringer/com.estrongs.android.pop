package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.fs.impl.usb.fs.ntfs.n;

public class j
  extends h
{
  public j(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public int l()
  {
    return e(20);
  }
  
  public int m()
  {
    return (int)g(16);
  }
  
  public String toString()
  {
    return String.format("[attribute (res) type=x%x name'%s' size=%d]", new Object[] { Integer.valueOf(e()), i(), Integer.valueOf(m()) });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */