package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.fs.impl.usb.fs.ntfs.StandardInformationAttribute;
import com.estrongs.fs.impl.usb.fs.ntfs.aa;
import com.estrongs.fs.impl.usb.fs.ntfs.b.a;
import com.estrongs.fs.impl.usb.fs.ntfs.b.g;
import com.estrongs.fs.impl.usb.fs.ntfs.m;
import com.estrongs.fs.impl.usb.fs.ntfs.n;

public abstract class h
  extends aa
{
  private final int a;
  private final int b;
  private final n c;
  
  public h(n paramn, int paramInt)
  {
    super(paramn, paramInt);
    c = paramn;
    a = h(0);
    b = e(12);
  }
  
  public static h a(n paramn, int paramInt)
  {
    if (paramn.d(paramInt + 8) == 0) {}
    for (int i = 1;; i = 0) {
      switch (paramn.h(paramInt + 0))
      {
      default: 
        if (i == 0) {
          break label155;
        }
        return new j(paramn, paramInt);
      }
    }
    return new StandardInformationAttribute(paramn, paramInt);
    if (i != 0) {
      return new c(paramn, paramInt);
    }
    return new b(paramn, paramInt);
    return new m(paramn, paramInt);
    return new g(paramn, paramInt);
    return new a(paramn, paramInt);
    label155:
    return new i(paramn, paramInt);
  }
  
  public int c()
  {
    return b;
  }
  
  public int e()
  {
    return a;
  }
  
  public int f()
  {
    return d(9);
  }
  
  public int g()
  {
    return e(10);
  }
  
  public int h()
  {
    return e(14);
  }
  
  public String i()
  {
    int j = f();
    if (j > 0)
    {
      char[] arrayOfChar = new char[j];
      int k = g();
      int i = 0;
      while (i < j)
      {
        arrayOfChar[i] = o(i * 2 + k);
        i += 1;
      }
      return new String(arrayOfChar);
    }
    return null;
  }
  
  public n j()
  {
    return c;
  }
  
  public boolean k()
  {
    return d(8) == 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */