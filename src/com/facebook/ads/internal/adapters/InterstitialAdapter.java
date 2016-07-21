package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.Map;

public abstract class InterstitialAdapter
  implements AdAdapter
{
  public final AdPlacementType getPlacementType()
  {
    return AdPlacementType.INTERSTITIAL;
  }
  
  public abstract void loadInterstitialAd(Context paramContext, InterstitialAdapterListener paramInterstitialAdapterListener, Map<String, Object> paramMap);
  
  public abstract boolean show();
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.InterstitialAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */