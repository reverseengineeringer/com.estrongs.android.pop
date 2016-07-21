package com.flurry.android.ads;

public abstract interface FlurryAdInterstitialListener
{
  public abstract void onAppExit(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onClicked(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onClose(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onDisplay(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onError(FlurryAdInterstitial paramFlurryAdInterstitial, FlurryAdErrorType paramFlurryAdErrorType, int paramInt);
  
  public abstract void onFetched(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onRendered(FlurryAdInterstitial paramFlurryAdInterstitial);
  
  public abstract void onVideoCompleted(FlurryAdInterstitial paramFlurryAdInterstitial);
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdInterstitialListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */