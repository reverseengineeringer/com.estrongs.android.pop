package com.flurry.sdk;

import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;
import java.util.Collections;

final class cf$a
  implements RequestListener
{
  private cf$a(cf paramcf) {}
  
  public void MMAdOverlayClosed(MMAd paramMMAd)
  {
    kg.a(3, cf.a(), "Millennial MMAdView banner overlay closed.");
  }
  
  public void MMAdOverlayLaunched(MMAd paramMMAd)
  {
    kg.a(3, cf.a(), "Millennial MMAdView banner overlay launched.");
  }
  
  public void MMAdRequestIsCaching(MMAd paramMMAd)
  {
    kg.a(3, cf.a(), "Millennial MMAdView banner request is caching.");
  }
  
  public void onSingleTap(MMAd paramMMAd)
  {
    a.onAdClicked(Collections.emptyMap());
    kg.a(3, cf.a(), "Millennial MMAdView banner tapped.");
  }
  
  public void requestCompleted(MMAd paramMMAd)
  {
    a.onAdShown(Collections.emptyMap());
    kg.a(3, cf.a(), "Millennial MMAdView returned ad." + System.currentTimeMillis());
  }
  
  public void requestFailed(MMAd paramMMAd, MMException paramMMException)
  {
    a.onRenderFailed(Collections.emptyMap());
    kg.a(3, cf.a(), "Millennial MMAdView failed to load ad with error: " + paramMMException);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */