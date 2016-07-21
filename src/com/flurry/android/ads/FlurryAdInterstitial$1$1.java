package com.flurry.android.ads;

import com.flurry.sdk.ba;
import com.flurry.sdk.d;
import com.flurry.sdk.ly;

class FlurryAdInterstitial$1$1
  extends ly
{
  FlurryAdInterstitial$1$1(FlurryAdInterstitial.1 param1, d paramd, FlurryAdInterstitialListener paramFlurryAdInterstitialListener) {}
  
  public void a()
  {
    switch (FlurryAdInterstitial.2.a[a.b.ordinal()])
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
      b.onDisplay(c.a);
      return;
    case 6: 
      b.onClose(c.a);
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
 * Qualified Name:     com.flurry.android.ads.FlurryAdInterstitial.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */