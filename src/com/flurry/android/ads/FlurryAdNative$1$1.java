package com.flurry.android.ads;

import com.flurry.sdk.ba;
import com.flurry.sdk.d;
import com.flurry.sdk.f;
import com.flurry.sdk.ly;

class FlurryAdNative$1$1
  extends ly
{
  FlurryAdNative$1$1(FlurryAdNative.1 param1, d paramd, FlurryAdNativeListener paramFlurryAdNativeListener) {}
  
  public void a()
  {
    switch (FlurryAdNative.2.a[a.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      f.a().a("nativeAdReady", 1);
      b.onFetched(c.a);
      return;
    case 2: 
      if (a.c == ba.u) {
        f.a().a("nativeAdUnfilled", 1);
      }
      b.onError(c.a, FlurryAdErrorType.FETCH, a.c.a());
      return;
    case 3: 
      b.onShowFullscreen(c.a);
      return;
    case 4: 
      b.onCloseFullscreen(c.a);
      return;
    case 5: 
      b.onAppExit(c.a);
      return;
    case 6: 
      b.onClicked(c.a);
      return;
    case 7: 
      b.onError(c.a, FlurryAdErrorType.CLICK, a.c.a());
      return;
    case 8: 
      b.onImpressionLogged(c.a);
      return;
    case 9: 
      b.onExpanded(c.a);
      return;
    }
    b.onCollapsed(c.a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdNative.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */