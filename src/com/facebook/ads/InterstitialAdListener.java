package com.facebook.ads;

public abstract interface InterstitialAdListener
  extends AdListener
{
  public abstract void onInterstitialDismissed(Ad paramAd);
  
  public abstract void onInterstitialDisplayed(Ad paramAd);
}

/* Location:
 * Qualified Name:     com.facebook.ads.InterstitialAdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */