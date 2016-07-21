package com.flurry.android.ads;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import com.flurry.sdk.d;
import com.flurry.sdk.da;
import com.flurry.sdk.f;
import com.flurry.sdk.fd;
import com.flurry.sdk.hc;
import com.flurry.sdk.i;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class FlurryAdNative
{
  private static final String a = FlurryAdNative.class.getSimpleName();
  private final List<FlurryAdNativeAsset> b = new ArrayList();
  private x c;
  private final kb<d> d = new FlurryAdNative.1(this);
  private FlurryAdNativeListener e;
  
  public FlurryAdNative(Context paramContext, String paramString)
  {
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    if (paramContext == null) {
      throw new IllegalArgumentException("Context cannot be null!");
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
    c = new x(paramContext, paramString);
    kg.a(a, "NativeAdObject created: " + c);
    paramContext = new ArrayList();
    paramContext.add(Integer.valueOf(1));
    c.a(paramContext);
    kc.a().a("com.flurry.android.impl.ads.AdStateEvent", d);
  }
  
  private void a()
  {
    boolean bool = true;
    if (c == null) {
      return;
    }
    ??? = fd.d().iterator();
    int i;
    label127:
    hc localhc;
    for (;;)
    {
      if (((Iterator)???).hasNext())
      {
        Object localObject2 = (String)((Iterator)???).next();
        if ((localObject2 != null) && (((String)localObject2).startsWith("Flurry_Mopub")))
        {
          i = 0;
          if (i != 0) {}
          synchronized (b)
          {
            localObject2 = c.F().iterator();
            Object localObject5;
            do
            {
              if (!((Iterator)localObject2).hasNext()) {
                break;
              }
              localObject5 = (da)((Iterator)localObject2).next();
            } while (!a.equals("showRating"));
            bool = c.equals("true");
            synchronized (b)
            {
              localObject2 = c.F().iterator();
              while (((Iterator)localObject2).hasNext())
              {
                localObject5 = (da)((Iterator)localObject2).next();
                if ((!a.equals("showRating")) && ((bool) || ((!a.equals("appRating")) && (!a.equals("secRatingImg")) && (!a.equals("secHqRatingIMg")))))
                {
                  localObject5 = new FlurryAdNativeAsset((da)localObject5, c.e());
                  b.add(localObject5);
                }
              }
            }
          }
          localhc = new hc();
          localhc.x();
          switch (c.f().getResources().getDisplayMetrics().densityDpi)
          {
          }
        }
      }
    }
    for (;;)
    {
      b.add(new FlurryAdNativeAsset(localhc.t(), c.e()));
      b.add(new FlurryAdNativeAsset(localhc.w(), c.e()));
      for (;;)
      {
        return;
        b.add(new FlurryAdNativeAsset(localhc.r(), c.e()));
        b.add(new FlurryAdNativeAsset(localhc.u(), c.e()));
        continue;
        b.add(new FlurryAdNativeAsset(localhc.s(), c.e()));
        b.add(new FlurryAdNativeAsset(localhc.v(), c.e()));
      }
      bool = true;
      break label127;
      i = 1;
      break;
    }
  }
  
  public void destroy()
  {
    try
    {
      kc.a().b("com.flurry.android.impl.ads.AdStateEvent", d);
      e = null;
      if (c != null)
      {
        kg.a(a, "NativeAdObject ready to destroy: " + c);
        c.a();
        c = null;
        kg.a(a, "NativeAdObject destroyed: " + null);
      }
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
      kg.a(a, "NativeAdObject ready to fetch ad: " + c);
      f.a().a("nativeAdFetch", 1);
      c.C();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public String getAdSpace()
  {
    if (c == null)
    {
      kg.b(a, "Ad object is null");
      return null;
    }
    return c.h();
  }
  
  public FlurryAdNativeAsset getAsset(String paramString)
  {
    if (i.a() == null) {
      return null;
    }
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    for (;;)
    {
      try
      {
        synchronized (b)
        {
          Iterator localIterator = b.iterator();
          if (localIterator.hasNext())
          {
            FlurryAdNativeAsset localFlurryAdNativeAsset = (FlurryAdNativeAsset)localIterator.next();
            if (!paramString.equals(localFlurryAdNativeAsset.getName())) {
              continue;
            }
            paramString = localFlurryAdNativeAsset;
            return paramString;
          }
        }
        paramString = null;
      }
      catch (Throwable paramString)
      {
        kg.a(a, "Exception: ", paramString);
        return null;
      }
    }
  }
  
  public List<FlurryAdNativeAsset> getAssetList()
  {
    if (i.a() == null) {
      return Collections.emptyList();
    }
    try
    {
      ArrayList localArrayList = new ArrayList();
      synchronized (b)
      {
        localArrayList.addAll(b);
        ??? = Collections.unmodifiableList(localArrayList);
        return (List<FlurryAdNativeAsset>)???;
      }
      return Collections.emptyList();
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public int getStyle()
  {
    try
    {
      int i = c.E();
      return i;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return 0;
  }
  
  public boolean isExpired()
  {
    try
    {
      boolean bool = c.x();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return false;
  }
  
  public boolean isReady()
  {
    try
    {
      boolean bool = c.A();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return false;
  }
  
  public boolean isVideoAd()
  {
    try
    {
      boolean bool = c.B();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
    return false;
  }
  
  public void removeTrackingView()
  {
    try
    {
      c.D();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Exception: ", localThrowable);
    }
  }
  
  public void setCollapsableTrackingView(View paramView1, View paramView2)
  {
    try
    {
      c.b(paramView1, paramView2);
      return;
    }
    catch (Throwable paramView1)
    {
      kg.a(a, "Exception: ", paramView1);
    }
  }
  
  public void setExpandableTrackingView(View paramView1, View paramView2)
  {
    try
    {
      c.a(paramView1, paramView2);
      return;
    }
    catch (Throwable paramView1)
    {
      kg.a(a, "Exception: ", paramView1);
    }
  }
  
  public void setListener(FlurryAdNativeListener paramFlurryAdNativeListener)
  {
    try
    {
      e = paramFlurryAdNativeListener;
      return;
    }
    catch (Throwable paramFlurryAdNativeListener)
    {
      kg.a(a, "Exception: ", paramFlurryAdNativeListener);
    }
  }
  
  public void setSupportedStyles(List<Integer> paramList)
  {
    try
    {
      c.a(paramList);
      return;
    }
    catch (Throwable paramList)
    {
      kg.a(a, "Exception: ", paramList);
    }
  }
  
  public void setTargeting(FlurryAdTargeting paramFlurryAdTargeting)
  {
    try
    {
      c.a(paramFlurryAdTargeting);
      return;
    }
    catch (Throwable paramFlurryAdTargeting)
    {
      kg.a(a, "Exception: ", paramFlurryAdTargeting);
    }
  }
  
  public void setTrackingView(View paramView)
  {
    try
    {
      c.b(paramView);
      return;
    }
    catch (Throwable paramView)
    {
      kg.a(a, "Exception: ", paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdNative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */