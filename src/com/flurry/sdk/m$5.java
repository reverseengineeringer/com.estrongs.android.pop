package com.flurry.sdk;

import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;

class m$5
  extends ly
{
  m$5(m paramm, x paramx, String paramString, ViewGroup paramViewGroup) {}
  
  public void a()
  {
    kg.a(3, m.a(), "AdCacheNative: Attempting to play video from:" + a.e() + b);
    gf localgf = new gf(a.f(), a, null);
    a.a(localgf, b);
    SurfaceView localSurfaceView = new SurfaceView(a.f());
    c.addView(localSurfaceView, new RelativeLayout.LayoutParams(0, 0));
    localSurfaceView.setVisibility(8);
    c.requestLayout();
    c.addView(localgf);
    c.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.m.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */