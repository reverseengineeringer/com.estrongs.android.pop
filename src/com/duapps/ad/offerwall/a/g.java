package com.duapps.ad.offerwall.a;

import android.content.Context;
import android.os.SystemClock;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.l;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeAdsManager.Listener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class g
{
  private Context a;
  private NativeAdsManager b;
  private boolean c;
  private List<NativeAd> d = Collections.synchronizedList(new ArrayList(10));
  private a e;
  private long f;
  private int g;
  private int h;
  private NativeAdsManager.Listener i = new h(this);
  private AdListener j = new i(this);
  
  public g(Context paramContext, int paramInt, a parama)
  {
    e = parama;
    a = paramContext;
    g = paramInt;
    paramContext = ag.a(paramContext.getApplicationContext()).b(paramInt);
    b = new NativeAdsManager(a, paramContext, 10);
    b.setListener(i);
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void b()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("loadAds:");
    int k = h + 1;
    h = k;
    l.c("FacebookAdsManager", k);
    f = SystemClock.elapsedRealtime();
    c = true;
    b.loadAds();
  }
  
  public int c()
  {
    synchronized (d)
    {
      int k = b.getUniqueNativeAdCount();
      return k;
    }
  }
  
  public boolean d()
  {
    return b.isLoaded();
  }
  
  public List<NativeAd> e()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (d)
    {
      localArrayList.addAll(d);
      return localArrayList;
    }
  }
  
  public void f()
  {
    synchronized (d)
    {
      e = null;
      d.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */