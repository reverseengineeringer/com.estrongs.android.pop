package com.flurry.android.ads;

import com.flurry.sdk.ba;
import com.flurry.sdk.d;
import com.flurry.sdk.ly;

class FlurryAdBanner$1$1
  extends ly
{
  FlurryAdBanner$1$1(FlurryAdBanner.1 param1, d paramd, FlurryAdBannerListener paramFlurryAdBannerListener) {}
  
  public void a()
  {
    switch (FlurryAdBanner.2.a[a.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      b.onFetched(c.a);
      return;
    case 2: 
      b.onError(c.a, FlurryAdErrorType.FETCH, a.c.a());
      return;
    case 3: 
      b.onRendered(c.a);
      return;
    case 4: 
      b.onError(c.a, FlurryAdErrorType.RENDER, a.c.a());
      return;
    case 5: 
      b.onShowFullscreen(c.a);
      return;
    case 6: 
      b.onCloseFullscreen(c.a);
      return;
    case 7: 
      b.onAppExit(c.a);
      return;
    case 8: 
      b.onClicked(c.a);
      return;
    case 9: 
      b.onVideoCompleted(c.a);
      return;
    }
    b.onError(c.a, FlurryAdErrorType.CLICK, a.c.a());
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdBanner.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */