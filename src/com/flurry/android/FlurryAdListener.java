package com.flurry.android;

public abstract interface FlurryAdListener
{
  public abstract void onAdClicked(String paramString);
  
  public abstract void onAdClosed(String paramString);
  
  public abstract void onAdOpened(String paramString);
  
  public abstract void onApplicationExit(String paramString);
  
  public abstract void onRenderFailed(String paramString);
  
  public abstract void onRendered(String paramString);
  
  public abstract void onVideoCompleted(String paramString);
  
  public abstract boolean shouldDisplayAd(String paramString, FlurryAdType paramFlurryAdType);
  
  public abstract void spaceDidFailToReceiveAd(String paramString);
  
  public abstract void spaceDidReceiveAd(String paramString);
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryAdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */