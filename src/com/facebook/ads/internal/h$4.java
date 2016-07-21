package com.facebook.ads.internal;

import android.os.Handler;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.BannerAdapter;
import com.facebook.ads.internal.adapters.BannerAdapterListener;

class h$4
  implements BannerAdapterListener
{
  h$4(h paramh, Runnable paramRunnable) {}
  
  public void onBannerAdClicked(BannerAdapter paramBannerAdapter)
  {
    h.d(b);
    b.a.b();
  }
  
  public void onBannerAdExpanded(BannerAdapter paramBannerAdapter)
  {
    h.d(b);
    h.h(b);
  }
  
  public void onBannerAdLoaded(BannerAdapter paramBannerAdapter, View paramView)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    AdAdapter localAdAdapter = h.f(b);
    h.b(b, paramBannerAdapter);
    h.a(b, paramView);
    if (!h.g(b))
    {
      b.a.a();
      return;
    }
    b.a.a(paramView);
    h.a(b, localAdAdapter);
    h.b(b);
  }
  
  public void onBannerAdMinimized(BannerAdapter paramBannerAdapter)
  {
    h.d(b);
    h.b(b);
  }
  
  public void onBannerError(BannerAdapter paramBannerAdapter, AdError paramAdError)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    h.a(b, paramBannerAdapter);
    h.c(b);
  }
  
  public void onBannerLoggingImpression(BannerAdapter paramBannerAdapter)
  {
    h.d(b);
    b.a.c();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.h.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */