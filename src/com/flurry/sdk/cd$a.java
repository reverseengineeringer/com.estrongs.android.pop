package com.flurry.sdk;

import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitial.State;
import com.inmobi.monetization.IMInterstitialListener;
import java.util.Collections;
import java.util.Map;

final class cd$a
  implements IMInterstitialListener
{
  private cd$a(cd paramcd) {}
  
  public void onDismissInterstitialScreen(IMInterstitial paramIMInterstitial)
  {
    a.c(Collections.emptyMap());
    kg.a(3, cd.b(), "InMobi Interstitial ad dismissed.");
  }
  
  public void onInterstitialFailed(IMInterstitial paramIMInterstitial, IMErrorCode paramIMErrorCode)
  {
    a.d(Collections.emptyMap());
    kg.a(3, cd.b(), "InMobi imAdView ad request failed. ErrorCode  = " + paramIMErrorCode.toString());
  }
  
  public void onInterstitialInteraction(IMInterstitial paramIMInterstitial, Map<String, String> paramMap)
  {
    a.b(Collections.emptyMap());
    kg.a(3, cd.b(), "InMobi onBannerInteraction");
  }
  
  public void onInterstitialLoaded(IMInterstitial paramIMInterstitial)
  {
    kg.a(3, cd.b(), "InMobi Interstitial ad request completed.");
    if (IMInterstitial.State.READY.equals(paramIMInterstitial.getState()))
    {
      a.a(Collections.emptyMap());
      paramIMInterstitial.show();
    }
  }
  
  public void onLeaveApplication(IMInterstitial paramIMInterstitial)
  {
    a.b(Collections.emptyMap());
    kg.a(3, cd.b(), "InMobi onLeaveApplication");
  }
  
  public void onShowInterstitialScreen(IMInterstitial paramIMInterstitial)
  {
    kg.a(3, cd.b(), "InMobi Interstitial ad shown.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */