package com.flurry.android.ads;

public abstract interface FlurryAdNativeListener
{
  public abstract void onAppExit(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onClicked(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onCloseFullscreen(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onCollapsed(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onError(FlurryAdNative paramFlurryAdNative, FlurryAdErrorType paramFlurryAdErrorType, int paramInt);
  
  public abstract void onExpanded(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onFetched(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onImpressionLogged(FlurryAdNative paramFlurryAdNative);
  
  public abstract void onShowFullscreen(FlurryAdNative paramFlurryAdNative);
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdNativeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */