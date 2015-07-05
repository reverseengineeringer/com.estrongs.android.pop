package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.a.j;

public final class m
  extends j
{
  private String a;
  
  public m(n paramn, int paramInt)
  {
    super(paramn, paramInt);
  }
  
  private char[] n()
  {
    int i = l();
    int k = d(i + 64);
    char[] arrayOfChar = new char[k];
    int j = i + 66;
    i = 0;
    while (i < k)
    {
      arrayOfChar[i] = o(j);
      j += 2;
      i += 1;
    }
    return arrayOfChar;
  }
  
  public String a()
  {
    if (a == null) {
      a = new String(n());
    }
    return a;
  }
  
  public long b()
  {
    return n(l() + 48);
  }
  
  public int c()
  {
    return h(l() + 56);
  }
  
  public int d()
  {
    return d(l() + 65);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */