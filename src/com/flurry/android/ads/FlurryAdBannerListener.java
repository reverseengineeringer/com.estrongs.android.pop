package com.flurry.android.ads;

public abstract interface FlurryAdBannerListener
{
  public abstract void onAppExit(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onClicked(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onCloseFullscreen(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onError(FlurryAdBanner paramFlurryAdBanner, FlurryAdErrorType paramFlurryAdErrorType, int paramInt);
  
  public abstract void onFetched(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onRendered(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onShowFullscreen(FlurryAdBanner paramFlurryAdBanner);
  
  public abstract void onVideoCompleted(FlurryAdBanner paramFlurryAdBanner);
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdBannerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */