package com.flurry.sdk;

import com.google.android.gms.ads.a;
import java.util.Collections;

final class bx$a
  extends a
{
  private bx$a(bx parambx) {}
  
  public void onAdClosed()
  {
    a.onAdClosed(Collections.emptyMap());
    kg.a(4, bx.a(), "GMS AdView onAdClosed.");
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    a.onRenderFailed(Collections.emptyMap());
    kg.a(5, bx.a(), "GMS AdView onAdFailedToLoad: " + paramInt + ".");
  }
  
  public void onAdLeftApplication()
  {
    a.onAdClicked(Collections.emptyMap());
    kg.a(4, bx.a(), "GMS AdView onAdLeftApplication.");
  }
  
  public void onAdLoaded()
  {
    a.onAdShown(Collections.emptyMap());
    kg.a(4, bx.a(), "GMS AdView onAdLoaded.");
  }
  
  public void onAdOpened()
  {
    kg.a(4, bx.a(), "GMS AdView onAdOpened.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */