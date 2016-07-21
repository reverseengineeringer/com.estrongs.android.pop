package com.flurry.sdk;

import android.view.ViewGroup.LayoutParams;
import android.widget.AbsoluteLayout.LayoutParams;

final class gx$a
  extends gx.c
{
  gx$a()
  {
    super(null);
  }
  
  public ViewGroup.LayoutParams a(cn paramcn)
  {
    kg.a(5, gx.a(), "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view");
    return new AbsoluteLayout.LayoutParams(b(paramcn), c(paramcn), 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */