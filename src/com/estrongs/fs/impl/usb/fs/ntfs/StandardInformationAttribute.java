package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.a.j;

public class StandardInformationAttribute
  extends j
{
  public StandardInformationAttribute(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  public long a()
  {
    return n(l());
  }
  
  public long b()
  {
    return n(l() + 8);
  }
  
  public int c()
  {
    return m(l() + 32);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.StandardInformationAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */