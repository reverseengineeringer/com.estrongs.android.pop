package com.facebook.ads;

public abstract interface AdListener
{
  public abstract void onAdClicked(Ad paramAd);
  
  public abstract void onAdLoaded(Ad paramAd);
  
  public abstract void onError(Ad paramAd, AdError paramAdError);
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */