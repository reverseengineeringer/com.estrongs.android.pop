package com.flurry.sdk;

import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;
import java.util.Collections;

final class ch$a
  implements RequestListener
{
  private ch$a(ch paramch) {}
  
  public void MMAdOverlayClosed(MMAd paramMMAd)
  {
    a.c(Collections.emptyMap());
    kg.a(3, ch.b(), "Millennial MMAdView Interstitial overlay closed.");
  }
  
  public void MMAdOverlayLaunched(MMAd paramMMAd)
  {
    a.a(Collections.emptyMap());
    kg.a(3, ch.b(), "Millennial MMAdView Interstitial overlay launched." + System.currentTimeMillis());
  }
  
  public void MMAdRequestIsCaching(MMAd paramMMAd)
  {
    kg.a(3, ch.b(), "Millennial MMAdView Interstitial request is caching.");
  }
  
  public void onSingleTap(MMAd paramMMAd)
  {
    a.b(Collections.emptyMap());
    kg.a(3, ch.b(), "Millennial MMAdView Interstitial tapped.");
  }
  
  public void requestCompleted(MMAd paramMMAd)
  {
    kg.a(3, ch.b(), "Millennial MMAdView returned interstitial ad: " + System.currentTimeMillis());
    if (!ch.a(a)) {
      ch.b(a).display();
    }
  }
  
  public void requestFailed(MMAd paramMMAd, MMException paramMMException)
  {
    a.d(Collections.emptyMap());
    kg.a(3, ch.b(), "Millennial MMAdView Interstitial failed to load ad.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */