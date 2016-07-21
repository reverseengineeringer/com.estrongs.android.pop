package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.i;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class NativeAdsManager
{
  private static final c a = c.a;
  private final Context b;
  private final String c;
  private final int d;
  private final List<NativeAd> e;
  private int f;
  private NativeAdsManager.Listener g;
  private i h;
  private boolean i;
  private boolean j;
  
  public NativeAdsManager(Context paramContext, String paramString, int paramInt)
  {
    b = paramContext;
    c = paramString;
    d = Math.max(paramInt, 0);
    e = new ArrayList(paramInt);
    f = -1;
    j = false;
    i = false;
  }
  
  public void disableAutoRefresh()
  {
    i = true;
    if (h != null) {
      h.c();
    }
  }
  
  public int getUniqueNativeAdCount()
  {
    return e.size();
  }
  
  public boolean isLoaded()
  {
    return j;
  }
  
  public void loadAds()
  {
    loadAds(EnumSet.of(NativeAd.MediaCacheFlag.NONE));
  }
  
  public void loadAds(EnumSet<NativeAd.MediaCacheFlag> paramEnumSet)
  {
    e locale = e.j;
    int k = d;
    if (h != null) {
      h.b();
    }
    h = new i(b, c, locale, null, a, k, paramEnumSet);
    if (i) {
      h.c();
    }
    h.a(new NativeAdsManager.1(this, paramEnumSet));
    h.a();
  }
  
  public NativeAd nextNativeAd()
  {
    int k = f;
    f = (k + 1);
    NativeAd localNativeAd2 = (NativeAd)e.get(k % e.size());
    NativeAd localNativeAd1 = localNativeAd2;
    if (k >= e.size()) {
      localNativeAd1 = new NativeAd(localNativeAd2);
    }
    return localNativeAd1;
  }
  
  public void setListener(NativeAdsManager.Listener paramListener)
  {
    g = paramListener;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdsManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */