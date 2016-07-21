package com.duapps.ad.offerwall.a;

import android.os.SystemClock;
import com.duapps.ad.base.l;
import com.duapps.ad.stats.b;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeAdsManager.Listener;
import java.util.List;

class h
  implements NativeAdsManager.Listener
{
  h(g paramg) {}
  
  public void onAdError(AdError paramAdError)
  {
    b.a(g.e(a), paramAdError.getErrorCode(), SystemClock.elapsedRealtime() - g.f(a), g.g(a));
    g.a(a, false);
    if (g.d(a) != null) {
      g.d(a).a(1);
    }
  }
  
  public void onAdsLoaded()
  {
    int i = 10;
    int j = g.a(a).getUniqueNativeAdCount();
    if (j > 10) {}
    for (;;)
    {
      List localList = g.b(a);
      j = 0;
      for (;;)
      {
        if (j < i) {}
        try
        {
          NativeAd localNativeAd = g.a(a).nextNativeAd();
          localNativeAd.setAdListener(g.c(a));
          g.b(a).add(localNativeAd);
          l.c("FacebookAdsManager", "Facebook ads poll data..." + localNativeAd.getAdTitle());
          j += 1;
        }
        finally {}
      }
      g.a(a, false);
      if (g.d(a) != null)
      {
        l.c("FacebookAdsManager", "Facebook data size:" + g.b(a).size());
        g.d(a).b(1);
      }
      b.a(g.e(a), 200, SystemClock.elapsedRealtime() - g.f(a), g.g(a));
      return;
      i = j;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */