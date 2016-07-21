package com.facebook.ads;

public abstract class AbstractAdListener
  implements AdListener, ImpressionListener, InterstitialAdListener
{
  public void onAdClicked(Ad paramAd) {}
  
  public void onAdLoaded(Ad paramAd) {}
  
  public void onError(Ad paramAd, AdError paramAdError) {}
  
  public void onInterstitialDismissed(Ad paramAd) {}
  
  public void onInterstitialDisplayed(Ad paramAd) {}
  
  public void onLoggingImpression(Ad paramAd) {}
}

/* Location:
 * Qualified Name:     com.facebook.ads.AbstractAdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */