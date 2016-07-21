package com.flurry.android.ads;

import com.flurry.sdk.d;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;

class FlurryAdBanner$1
  implements kb<d>
{
  FlurryAdBanner$1(FlurryAdBanner paramFlurryAdBanner) {}
  
  public void a(d paramd)
  {
    if (a != FlurryAdBanner.a(a)) {}
    FlurryAdBannerListener localFlurryAdBannerListener;
    do
    {
      do
      {
        return;
      } while (b == null);
      localFlurryAdBannerListener = FlurryAdBanner.b(a);
    } while (localFlurryAdBannerListener == null);
    js.a().a(new FlurryAdBanner.1.1(this, paramd, localFlurryAdBannerListener));
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdBanner.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */