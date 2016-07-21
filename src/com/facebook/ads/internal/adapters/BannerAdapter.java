package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.Map;

public abstract class BannerAdapter
  implements AdAdapter
{
  public final AdPlacementType getPlacementType()
  {
    return AdPlacementType.BANNER;
  }
  
  public abstract void loadBannerAd(Context paramContext, AdSize paramAdSize, BannerAdapterListener paramBannerAdapterListener, Map<String, Object> paramMap);
  
  public void onViewableImpression() {}
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.BannerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */