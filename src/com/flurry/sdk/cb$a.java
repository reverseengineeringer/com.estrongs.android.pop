package com.flurry.sdk;

import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import java.util.Collections;
import java.util.Map;

final class cb$a
  implements IMBannerListener
{
  private cb$a(cb paramcb) {}
  
  public void onBannerInteraction(IMBanner paramIMBanner, Map<String, String> paramMap)
  {
    a.onAdClicked(Collections.emptyMap());
    kg.a(3, cb.a(), "InMobi onBannerInteraction");
  }
  
  public void onBannerRequestFailed(IMBanner paramIMBanner, IMErrorCode paramIMErrorCode)
  {
    a.onRenderFailed(Collections.emptyMap());
    kg.a(3, cb.a(), "InMobi imAdView ad request failed. " + paramIMErrorCode.toString());
  }
  
  public void onBannerRequestSucceeded(IMBanner paramIMBanner)
  {
    a.onAdShown(Collections.emptyMap());
    kg.a(3, cb.a(), "InMobi imAdView ad request completed.");
  }
  
  public void onDismissBannerScreen(IMBanner paramIMBanner)
  {
    a.onAdClosed(Collections.emptyMap());
    kg.a(3, cb.a(), "InMobi imAdView dismiss ad.");
  }
  
  public void onLeaveApplication(IMBanner paramIMBanner)
  {
    kg.a(3, cb.a(), "InMobi onLeaveApplication");
  }
  
  public void onShowBannerScreen(IMBanner paramIMBanner)
  {
    a.onAdClicked(Collections.emptyMap());
    kg.a(3, cb.a(), "InMobi imAdView ad shown.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */