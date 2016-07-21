package com.flurry.sdk;

import com.google.android.gms.ads.a;
import com.google.android.gms.ads.h;
import java.util.Collections;

final class bz$a
  extends a
{
  private bz$a(bz parambz) {}
  
  public void onAdClosed()
  {
    a.c(Collections.emptyMap());
    kg.a(4, bz.b(), "GMS AdView onAdClosed.");
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    a.d(Collections.emptyMap());
    kg.a(5, bz.b(), "GMS AdView onAdFailedToLoad: " + paramInt + ".");
  }
  
  public void onAdLeftApplication()
  {
    a.b(Collections.emptyMap());
    kg.a(4, bz.b(), "GMS AdView onAdLeftApplication.");
  }
  
  public void onAdLoaded()
  {
    a.a(Collections.emptyMap());
    kg.a(4, bz.b(), "GMS AdView onAdLoaded.");
    bz.a(a).a();
  }
  
  public void onAdOpened()
  {
    kg.a(4, bz.b(), "GMS AdView onAdOpened.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */