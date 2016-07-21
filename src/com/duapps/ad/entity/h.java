package com.duapps.ad.entity;

import android.content.Context;
import android.view.View;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.duapps.ad.d;
import com.duapps.ad.stats.b;
import com.duapps.ad.stats.u;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;

public class h
  implements com.duapps.ad.entity.a.c, AdListener
{
  private static final c g = new i();
  private NativeAd a;
  private c b = g;
  private volatile boolean c = false;
  private Context d;
  private int e;
  private d f;
  private long h = 0L;
  
  public h(Context paramContext, String paramString, int paramInt)
  {
    d = paramContext;
    e = paramInt;
    a = new NativeAd(paramContext, paramString);
    a.setAdListener(this);
  }
  
  public void a(View paramView)
  {
    a.registerViewForInteraction(paramView);
    u.d(d, e);
    if (r.m(d)) {
      b.a(d, a.getAdTitle(), a.getAdCoverImage().getUrl(), e);
    }
  }
  
  public void a(d paramd)
  {
    f = paramd;
  }
  
  public void a(c paramc)
  {
    if (paramc == null)
    {
      b = g;
      return;
    }
    b = paramc;
  }
  
  public boolean a()
  {
    long l = System.currentTimeMillis() - h;
    return (l < 3300000L) && (l > 0L);
  }
  
  public void b()
  {
    if (a == null) {}
    do
    {
      return;
      if (a.isAdLoaded())
      {
        b.a(this, true);
        return;
      }
    } while (c);
    c = true;
    a.loadAd();
  }
  
  public void c()
  {
    a.unregisterView();
  }
  
  public void d()
  {
    b = g;
    l.c(h.class.getSimpleName(), "destroy");
    a.destroy();
  }
  
  public String e()
  {
    return a.getAdCoverImage().getUrl();
  }
  
  public String f()
  {
    return a.getAdIcon().getUrl();
  }
  
  public String g()
  {
    return a.getAdCallToAction();
  }
  
  public String h()
  {
    return a.getAdBody();
  }
  
  public String i()
  {
    return a.getAdTitle();
  }
  
  public float j()
  {
    NativeAd.Rating localRating = a.getAdStarRating();
    if (localRating != null) {
      return (float)localRating.getValue();
    }
    return 4.5F;
  }
  
  public int k()
  {
    return 2;
  }
  
  public String l()
  {
    return null;
  }
  
  public String m()
  {
    return null;
  }
  
  public String n()
  {
    return "facebook";
  }
  
  public int o()
  {
    return -1;
  }
  
  public void onAdClicked(Ad paramAd)
  {
    if (b != null) {
      b.a(this);
    }
    if (f != null) {
      f.a();
    }
    u.c(d, e);
  }
  
  public void onAdLoaded(Ad paramAd)
  {
    h = System.currentTimeMillis();
    b.a(this, false);
  }
  
  public void onError(Ad paramAd, AdError paramAdError)
  {
    b.a(paramAdError.getErrorCode(), paramAdError.getErrorMessage());
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */