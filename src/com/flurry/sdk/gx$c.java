package com.flurry.sdk;

import android.view.ViewGroup.LayoutParams;

abstract class gx$c
{
  private static boolean h(cn paramcn)
  {
    return a != 0;
  }
  
  private static boolean i(cn paramcn)
  {
    return b != 0;
  }
  
  public abstract ViewGroup.LayoutParams a(cn paramcn);
  
  public int b(cn paramcn)
  {
    if (h(paramcn)) {
      return d(paramcn);
    }
    return f(paramcn);
  }
  
  public int c(cn paramcn)
  {
    if (i(paramcn)) {
      return e(paramcn);
    }
    return g(paramcn);
  }
  
  public int d(cn paramcn)
  {
    return lr.b(a);
  }
  
  public int e(cn paramcn)
  {
    return lr.b(b);
  }
  
  public int f(cn paramcn)
  {
    return -1;
  }
  
  public int g(cn paramcn)
  {
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gx.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */