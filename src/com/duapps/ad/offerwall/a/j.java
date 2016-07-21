package com.duapps.ad.offerwall.a;

import android.content.Context;
import com.duapps.ad.stats.u;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;

public class j
  implements AdListener
{
  private Context a;
  private int b;
  private int c;
  
  public j(Context paramContext, int paramInt1, int paramInt2)
  {
    a = paramContext;
    b = paramInt1;
    c = paramInt2;
  }
  
  public void onAdClicked(Ad paramAd)
  {
    u.b(a, b, c);
  }
  
  public void onAdLoaded(Ad paramAd) {}
  
  public void onError(Ad paramAd, AdError paramAdError) {}
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */