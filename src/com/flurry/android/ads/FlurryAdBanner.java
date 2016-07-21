package com.flurry.android.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.flurry.sdk.d;
import com.flurry.sdk.i;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.r;

public final class FlurryAdBanner
{
  private static final String a = FlurryAdBanner.class.getSimpleName();
  private r b;
  private final kb<d> c = new FlurryAdBanner.1(this);
  private FlurryAdBannerListener d;
  
  public FlurryAdBanner(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null) {
      throw new IllegalArgumentException("Context cannot be null!");
    }
    if (!(paramContext instanceof Activity)) {
      throw new IllegalArgumentException("Context must be an Activity context!");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Ad space must be specified!");
    }
    try
    {
      if (i.a() == null) {
        throw new IllegalStateException("Could not find FlurryAds module. Please make sure the library is included.");
      }
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "Exception: ", paramContext);
      return;
    }
    b = new r(paramContext, paramViewGroup, paramString);
    kg.a(a, "BannerAdObject created: " + b);
    kc.a().a("com.flurry.android.impl.ads.AdStateEvent", c);
  }
  
  public void destroy()
  {
    try
    {
      kc.a().b("com.flurry.android.impl.ads.AdStateEvent", c);
      d = null;
      if (b != null)
      {
        kg.a(a, "BannerAdObject ready to destroy: " + b);
        b.a();
        b = null;
        kg.a(a, "BannerAdObject destroyed: " + null);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public void displayAd()
  {
    try
    {
      b.C();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public void fetchAd()
  {
    try
    {
      kg.a(a, "BannerAdObject ready to fetch ad: " + b);
      b.B();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public void fetchAndDisplayAd()
  {
    try
    {
      b.D();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public String getAdSpace()
  {
    if (b == null)
    {
      kg.b(a, "Ad object is null");
      return null;
    }
    return b.h();
  }
  
  public boolean isReady()
  {
    try
    {
      boolean bool = b.A();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return false;
  }
  
  public void setListener(FlurryAdBannerListener paramFlurryAdBannerListener)
  {
    try
    {
      d = paramFlurryAdBannerListener;
      return;
    }
    catch (Throwable paramFlurryAdBannerListener)
    {
      kg.a(a, "Exception: ", paramFlurryAdBannerListener);
    }
  }
  
  public void setTargeting(FlurryAdTargeting paramFlurryAdTargeting)
  {
    try
    {
      b.a(paramFlurryAdTargeting);
      return;
    }
    catch (Throwable paramFlurryAdTargeting)
    {
      kg.a(a, "Exception: ", paramFlurryAdTargeting);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */