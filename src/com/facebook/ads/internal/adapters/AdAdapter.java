package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;

public abstract interface AdAdapter
{
  public abstract AdPlacementType getPlacementType();
  
  public abstract void onDestroy();
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.AdAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */