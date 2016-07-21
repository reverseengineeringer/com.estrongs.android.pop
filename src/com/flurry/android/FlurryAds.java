package com.flurry.android;

import android.content.Context;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Looper;
import android.view.ViewGroup;
import com.flurry.sdk.i;
import com.flurry.sdk.j;
import com.flurry.sdk.js;
import com.flurry.sdk.kg;
import com.flurry.sdk.lk;
import com.flurry.sdk.v;
import com.flurry.sdk.w;
import java.util.Map;

@Deprecated
public class FlurryAds
{
  private static final String a = FlurryAds.class.getSimpleName();
  
  @Deprecated
  public static void clearLocation()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    lk.a().a("ExplicitLocation", null);
  }
  
  @Deprecated
  public static void clearTargetingKeywords()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    j.a().f();
  }
  
  @Deprecated
  public static void clearUserCookies()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    j.a().e();
  }
  
  @Deprecated
  public static void displayAd(Context paramContext, String paramString, ViewGroup paramViewGroup)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null)
    {
      kg.b(a, "Context passed to displayAd was null.");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "Ad space name passed to displayAd was null.");
      return;
    }
    if (paramString.length() == 0)
    {
      kg.b(a, "Ad space name passed to displayAd was empty.");
      return;
    }
    if (paramViewGroup == null)
    {
      kg.b(a, "ViewGroup passed to displayAd was null.");
      return;
    }
    try
    {
      localObject = i.a();
      if (localObject == null)
      {
        kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "Exception while displaying Ad: ", paramContext);
      return;
    }
    Object localObject = ((i)localObject).e().a(paramContext, paramString);
    if (localObject == null) {
      paramContext = new v(paramContext, paramViewGroup, paramString);
    }
    do
    {
      paramContext.r();
      return;
      paramContext = (Context)localObject;
    } while (paramViewGroup == ((v)localObject).g());
    kg.b(a, "An ad must be displayed with the same context and viewGroup as the fetch.");
  }
  
  @Deprecated
  public static void enableTestAds(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    j.a().a(paramBoolean);
  }
  
  @Deprecated
  public static void fetchAd(Context paramContext, String paramString, ViewGroup paramViewGroup, FlurryAdSize paramFlurryAdSize)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null)
    {
      kg.b(a, "Context passed to fetchAd was null.");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "Ad space name passed to fetchAd was null.");
      return;
    }
    if (paramString.length() == 0)
    {
      kg.b(a, "Ad space name passed to fetchAd was empty.");
      return;
    }
    if (paramViewGroup == null)
    {
      kg.b(a, "ViewGroup passed to fetchAd was null.");
      return;
    }
    if (paramFlurryAdSize == null)
    {
      kg.b(a, "FlurryAdSize passed to fetchAd was null.");
      return;
    }
    try
    {
      paramFlurryAdSize = i.a();
      if (paramFlurryAdSize == null)
      {
        kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "Exception while fetching Ad: ", paramContext);
      return;
    }
    v localv = paramFlurryAdSize.e().a(paramContext, paramString);
    if (localv == null) {
      paramFlurryAdSize = new v(paramContext, paramViewGroup, paramString);
    }
    for (;;)
    {
      paramFlurryAdSize.q();
      return;
      paramFlurryAdSize = localv;
      if (paramViewGroup != localv.g())
      {
        localv.a();
        paramFlurryAdSize = new v(paramContext, paramViewGroup, paramString);
      }
    }
  }
  
  @Deprecated
  public static boolean getAd(Context paramContext, String paramString, ViewGroup paramViewGroup, FlurryAdSize paramFlurryAdSize, long paramLong)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return false;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null)
    {
      kg.b(a, "Context passed to getAd was null.");
      return false;
    }
    if (paramString == null)
    {
      kg.b(a, "Ad space name passed to getAd was null.");
      return false;
    }
    if (paramString.length() == 0)
    {
      kg.b(a, "Ad space name passed to getAd was empty.");
      return false;
    }
    if (paramViewGroup == null)
    {
      kg.b(a, "ViewGroup passed to getAd was null.");
      return false;
    }
    if (paramFlurryAdSize == null)
    {
      kg.b(a, "FlurryAdSize passed to getAd was null.");
      return false;
    }
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      kg.b(a, "getAd must be called from UI thread.");
      return false;
    }
    try
    {
      paramFlurryAdSize = i.a();
      if (paramFlurryAdSize == null)
      {
        kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
        return false;
      }
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "Exception while getting Ad : ", paramContext);
      return false;
    }
    v localv = paramFlurryAdSize.e().a(paramContext, paramString);
    if (localv == null) {
      paramFlurryAdSize = new v(paramContext, paramViewGroup, paramString);
    }
    for (;;)
    {
      return paramFlurryAdSize.s();
      if (paramContext == localv.f())
      {
        paramFlurryAdSize = localv;
        if (paramViewGroup == localv.g()) {}
      }
      else
      {
        localv.a();
        paramFlurryAdSize = new v(paramContext, paramViewGroup, paramString);
      }
    }
  }
  
  @Deprecated
  public static void initializeAds(Context paramContext) {}
  
  @Deprecated
  public static boolean isAdAvailable(Context paramContext, String paramString, FlurryAdSize paramFlurryAdSize, long paramLong)
  {
    if (Build.VERSION.SDK_INT < 10) {
      kg.b(a, "Device SDK Version older than 10");
    }
    do
    {
      return false;
      if (js.a() == null) {
        throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
      }
      if (paramContext == null)
      {
        kg.b(a, "Context passed to isAdAvailable was null.");
        return false;
      }
      if (paramString == null)
      {
        kg.b(a, "Ad space name passed to isAdAvailable was null.");
        return false;
      }
      if (paramString.length() == 0)
      {
        kg.b(a, "Ad space name passed to isAdAvailable was empty.");
        return false;
      }
      if (paramFlurryAdSize == null)
      {
        kg.b(a, "FlurryAdSize passed to isAdAvailable was null.");
        return false;
      }
      try
      {
        paramFlurryAdSize = i.a();
        if (paramFlurryAdSize == null)
        {
          kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
          return false;
        }
      }
      catch (Throwable paramContext)
      {
        kg.a(a, "Exception while checking Ads if available: ", paramContext);
        return false;
      }
      paramContext = paramFlurryAdSize.e().a(paramContext, paramString);
    } while (paramContext == null);
    boolean bool = paramContext.p();
    return bool;
  }
  
  @Deprecated
  public static boolean isAdReady(String paramString)
  {
    if (Build.VERSION.SDK_INT < 10) {
      kg.b(a, "Device SDK Version older than 10");
    }
    do
    {
      return false;
      if (js.a() == null) {
        throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
      }
      if (paramString == null)
      {
        kg.b(a, "Ad space name passed to isAdReady was null.");
        return false;
      }
      if (paramString.length() == 0)
      {
        kg.b(a, "Ad space name passed to isAdReady was empty.");
        return false;
      }
      i locali;
      try
      {
        locali = i.a();
        if (locali == null)
        {
          kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
          return false;
        }
      }
      catch (Throwable paramString)
      {
        kg.a(a, "Exception while checking Ads if ready: ", paramString);
        return false;
      }
      paramString = locali.e().a(paramString);
    } while (paramString == null);
    boolean bool = paramString.p();
    return bool;
  }
  
  @Deprecated
  public static void removeAd(Context paramContext, String paramString, ViewGroup paramViewGroup)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null)
    {
      kg.b(a, "Context passed to removeAd was null.");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "Ad space name passed to removeAd was null.");
      return;
    }
    if (paramString.length() == 0)
    {
      kg.b(a, "Ad space name passed to removeAd was empty.");
      return;
    }
    if (paramViewGroup == null)
    {
      kg.b(a, "ViewGroup passed to removeAd was null.");
      return;
    }
    try
    {
      paramViewGroup = i.a();
      if (paramViewGroup == null)
      {
        kg.b(a, "Could not find FlurryAds module. Please make sure the library is included.");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "Exception while removing Ad: ", paramContext);
      return;
    }
    paramViewGroup.e().b(paramContext, paramString);
  }
  
  @Deprecated
  public static void setAdListener(FlurryAdListener paramFlurryAdListener)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    j.a().a(paramFlurryAdListener);
  }
  
  public static void setCustomAdNetworkHandler(ICustomAdNetworkHandler paramICustomAdNetworkHandler)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramICustomAdNetworkHandler == null)
    {
      kg.b(a, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null.");
      return;
    }
    j.a().a(paramICustomAdNetworkHandler);
  }
  
  @Deprecated
  public static void setLocation(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    Location localLocation = new Location("Explicit");
    localLocation.setLatitude(paramFloat1);
    localLocation.setLongitude(paramFloat2);
    lk.a().a("ExplicitLocation", localLocation);
  }
  
  @Deprecated
  public static void setTargetingKeywords(Map<String, String> paramMap)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramMap == null)
    {
      kg.b(a, "targetingKeywords Map passed to setTargetingKeywords was null.");
      return;
    }
    j.a().b(paramMap);
  }
  
  @Deprecated
  public static void setUserCookies(Map<String, String> paramMap)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramMap == null)
    {
      kg.b(a, "userCookies Map passed to setUserCookies was null.");
      return;
    }
    j.a().a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryAds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */