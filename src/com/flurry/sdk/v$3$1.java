package com.flurry.sdk;

import com.flurry.android.FlurryAdListener;

class v$3$1
  extends ly
{
  v$3$1(v.3 param3, d paramd, FlurryAdListener paramFlurryAdListener, String paramString) {}
  
  public void a()
  {
    switch (v.9.b[a.b.ordinal()])
    {
    default: 
      return;
    case 1: 
      b.spaceDidReceiveAd(c);
      return;
    case 2: 
      b.spaceDidFailToReceiveAd(c);
      return;
    case 3: 
      b.onRendered(c);
      return;
    case 4: 
      b.onRenderFailed(c);
      return;
    case 5: 
      v.a(d.a);
      b.onApplicationExit(c);
      return;
    case 6: 
      b.onAdClicked(c);
      return;
    case 7: 
      b.onVideoCompleted(c);
      return;
    case 8: 
      b.onAdOpened(c);
      return;
    }
    b.onAdClosed(c);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.v.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */