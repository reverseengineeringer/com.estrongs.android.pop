package com.facebook.ads;

import android.view.View;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.h;

class InterstitialAd$1
  extends a
{
  InterstitialAd$1(InterstitialAd paramInterstitialAd) {}
  
  public void a()
  {
    InterstitialAd.a(a, true);
    if (InterstitialAd.a(a) != null) {
      InterstitialAd.a(a).onAdLoaded(a);
    }
  }
  
  public void a(View paramView) {}
  
  public void a(b paramb)
  {
    if (InterstitialAd.a(a) != null) {
      InterstitialAd.a(a).onError(a, paramb.b());
    }
  }
  
  public void b()
  {
    if (InterstitialAd.a(a) != null) {
      InterstitialAd.a(a).onAdClicked(a);
    }
  }
  
  public void c()
  {
    if (InterstitialAd.b(a) != null) {
      InterstitialAd.b(a).onLoggingImpression(a);
    }
    if (((InterstitialAd.a(a) instanceof ImpressionListener)) && (InterstitialAd.a(a) != InterstitialAd.b(a))) {
      ((ImpressionListener)InterstitialAd.a(a)).onLoggingImpression(a);
    }
  }
  
  public void d()
  {
    if (InterstitialAd.a(a) != null) {
      InterstitialAd.a(a).onInterstitialDisplayed(a);
    }
  }
  
  public void e()
  {
    InterstitialAd.b(a, false);
    if (InterstitialAd.c(a) != null)
    {
      InterstitialAd.c(a).d();
      InterstitialAd.a(a, null);
    }
    if (InterstitialAd.a(a) != null) {
      InterstitialAd.a(a).onInterstitialDismissed(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.InterstitialAd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */