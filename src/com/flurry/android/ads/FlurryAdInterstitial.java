package com.flurry.android.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.flurry.sdk.d;
import com.flurry.sdk.i;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.u;

public final class FlurryAdInterstitial
{
  private static final String a = FlurryAdInterstitial.class.getSimpleName();
  private u b;
  private final kb<d> c = new FlurryAdInterstitial.1(this);
  private FlurryAdInterstitialListener d;
  
  public FlurryAdInterstitial(Context paramContext, String paramString)
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
    b = new u(paramContext, paramString);
    kg.a(a, "InterstitialAdObject created: " + b);
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
        kg.a(a, "InterstitialAdObject ready to destroy: " + b);
        b.a();
        b = null;
        kg.a(a, "InterstitialAdObject destroyed: " + null);
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
      b.A();
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
      kg.a(a, "InterstitialAdObject ready to fetch ad: " + b);
      b.z();
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
      boolean bool = b.y();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return false;
  }
  
  public void setListener(FlurryAdInterstitialListener paramFlurryAdInterstitialListener)
  {
    try
    {
      d = paramFlurryAdInterstitialListener;
      return;
    }
    catch (Throwable paramFlurryAdInterstitialListener)
    {
      kg.a(a, "Exception: ", paramFlurryAdInterstitialListener);
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
 * Qualified Name:     com.flurry.android.ads.FlurryAdInterstitial
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */