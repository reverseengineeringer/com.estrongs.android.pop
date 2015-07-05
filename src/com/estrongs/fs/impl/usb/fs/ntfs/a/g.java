package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.fs.impl.usb.fs.ntfs.aa;

public final class g
  extends aa
{
  public g(d paramd, int paramInt)
  {
    super(paramd, paramInt);
  }
  
  private int f()
  {
    return d(6);
  }
  
  private int g()
  {
    return d(7);
  }
  
  public int a()
  {
    return h(0);
  }
  
  public int b()
  {
    return e(8);
  }
  
  public long c()
  {
    return i(16);
  }
  
  public int d()
  {
    return e(24);
  }
  
  public String e()
  {
    int k = f();
    if (k == 0) {
      return "";
    }
    char[] arrayOfChar = new char[k];
    int j = 0;
    int i = g();
    while (j < k)
    {
      arrayOfChar[j] = o(i);
      j += 1;
      i += 2;
    }
    return new String(arrayOfChar);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(super.toString());
    localStringBuilder.append("[type=").append(a());
    localStringBuilder.append(",name=").append(e());
    if (b() == 0) {
      localStringBuilder.append(",resident");
    }
    for (;;)
    {
      localStringBuilder.append(",id=").append(d()).append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(",ref=").append(c());
      localStringBuilder.append(",vcn=").append(b());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */