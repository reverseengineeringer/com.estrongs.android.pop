package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.g;

public class InterstitialAd
  implements Ad
{
  private static final c a = c.a;
  private final Context b;
  private final String c;
  private h d;
  private boolean e;
  private boolean f;
  private InterstitialAdListener g;
  private ImpressionListener h;
  
  public InterstitialAd(Context paramContext, String paramString)
  {
    b = paramContext;
    c = paramString;
  }
  
  public void destroy()
  {
    if (d != null)
    {
      d.d();
      d = null;
    }
  }
  
  public boolean isAdLoaded()
  {
    return e;
  }
  
  public void loadAd()
  {
    e = false;
    if (f) {
      throw new IllegalStateException("InterstitialAd cannot be loaded while being displayed. Make sure your adapter calls adapterListener.onInterstitialDismissed().");
    }
    if (d != null)
    {
      d.d();
      d = null;
    }
    AdSize localAdSize = AdSize.INTERSTITIAL;
    e locale = g.a(AdSize.INTERSTITIAL);
    d = new h(b, c, locale, localAdSize, a, 1, true);
    d.a(new InterstitialAd.1(this));
    d.b();
  }
  
  public void setAdListener(InterstitialAdListener paramInterstitialAdListener)
  {
    g = paramInterstitialAdListener;
  }
  
  @Deprecated
  public void setImpressionListener(ImpressionListener paramImpressionListener)
  {
    h = paramImpressionListener;
  }
  
  public boolean show()
  {
    if (!e)
    {
      if (g != null) {
        g.onError(this, AdError.INTERNAL_ERROR);
      }
      return false;
    }
    d.c();
    f = true;
    e = false;
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.InterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */