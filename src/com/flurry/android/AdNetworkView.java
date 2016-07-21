package com.flurry.android;

import android.content.Context;
import com.flurry.sdk.bb;
import com.flurry.sdk.gt;
import com.flurry.sdk.s;
import java.util.Map;

public abstract class AdNetworkView
  extends gt
{
  private final AdCreative a;
  
  public AdNetworkView(Context paramContext, AdCreative paramAdCreative)
  {
    super(paramContext, null, null);
    a = paramAdCreative;
  }
  
  public AdNetworkView(Context paramContext, s params, AdCreative paramAdCreative)
  {
    super(paramContext, params, null);
    a = paramAdCreative;
  }
  
  public AdCreative getAdCreative()
  {
    return a;
  }
  
  public void onAdClicked(Map<String, String> paramMap)
  {
    super.onEvent(bb.h, paramMap);
  }
  
  public void onAdClosed(Map<String, String> paramMap)
  {
    super.onEvent(bb.v, paramMap);
  }
  
  public void onAdFilled(Map<String, String> paramMap)
  {
    super.onEvent(bb.d, paramMap);
  }
  
  public void onAdPrepared(Map<String, String> paramMap)
  {
    super.onEvent(bb.O, paramMap);
  }
  
  public void onAdShown(Map<String, String> paramMap)
  {
    super.onEvent(bb.f, paramMap);
  }
  
  public void onAdUnFilled(Map<String, String> paramMap)
  {
    super.onEvent(bb.e, paramMap);
  }
  
  public void onRenderFailed(Map<String, String> paramMap)
  {
    super.onEvent(bb.g, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.AdNetworkView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */