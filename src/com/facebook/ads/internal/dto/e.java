package com.facebook.ads.internal.dto;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.AdInternalSettings;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class e
{
  protected String a;
  protected AdPlacementType b;
  protected b c;
  public Context d;
  public com.facebook.ads.internal.e e;
  public boolean f;
  private com.facebook.ads.internal.c g;
  private int h;
  private AdSize i;
  
  public e(Context paramContext, String paramString, AdSize paramAdSize, com.facebook.ads.internal.e parame, com.facebook.ads.internal.c paramc, int paramInt, boolean paramBoolean)
  {
    a = paramString;
    i = paramAdSize;
    e = parame;
    c = b.a(parame);
    g = paramc;
    h = paramInt;
    f = paramBoolean;
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    d = paramContext;
    f.a(paramContext);
    f();
  }
  
  private void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (AdInternalSettings.shouldUseLiveRailEndpoint())
    {
      paramMap.put("LR_" + paramString1, paramString2);
      return;
    }
    paramMap.put(paramString1, paramString2);
  }
  
  private static Map<String, String> b(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("VIEWABLE", "1");
    localHashMap.put("SCHEMA", "json");
    localHashMap.put("SDK", "android");
    localHashMap.put("SDK_VERSION", "4.5.1");
    localHashMap.put("LOCALE", Locale.getDefault().toString());
    float f1 = getResourcesgetDisplayMetricsdensity;
    int j = getResourcesgetDisplayMetricswidthPixels;
    int k = getResourcesgetDisplayMetricsheightPixels;
    localHashMap.put("DENSITY", String.valueOf(f1));
    localHashMap.put("SCREEN_WIDTH", String.valueOf((int)(j / f1)));
    localHashMap.put("SCREEN_HEIGHT", String.valueOf((int)(k / f1)));
    localHashMap.put("IDFA", f.n);
    if (f.o) {}
    for (paramContext = "0";; paramContext = "1")
    {
      localHashMap.put("IDFA_FLAG", paramContext);
      localHashMap.put("ATTRIBUTION_ID", f.m);
      localHashMap.put("OS", "Android");
      localHashMap.put("OSVERS", f.a);
      localHashMap.put("BUNDLE", f.d);
      localHashMap.put("APPNAME", f.e);
      localHashMap.put("APPVERS", f.f);
      localHashMap.put("APPBUILD", String.valueOf(f.g));
      localHashMap.put("CARRIER", f.h);
      localHashMap.put("MAKE", f.b);
      localHashMap.put("MODEL", f.c);
      localHashMap.put("COPPA", String.valueOf(AdSettings.isChildDirected()));
      localHashMap.put("SDK_CAPABILITY", d.b());
      return localHashMap;
    }
  }
  
  private void f()
  {
    if (c == null) {
      c = b.a;
    }
    switch (e.1.a[c.ordinal()])
    {
    default: 
      b = AdPlacementType.UNKNOWN;
      return;
    case 1: 
      b = AdPlacementType.INTERSTITIAL;
      return;
    case 2: 
      b = AdPlacementType.BANNER;
      return;
    }
    b = AdPlacementType.NATIVE;
  }
  
  public String a()
  {
    return a;
  }
  
  public b b()
  {
    return c;
  }
  
  public AdSize c()
  {
    return i;
  }
  
  public int d()
  {
    return h;
  }
  
  public Map<String, String> e()
  {
    HashMap localHashMap = new HashMap();
    a(localHashMap, "PLACEMENT_ID", a);
    if (b != AdPlacementType.UNKNOWN) {
      a(localHashMap, "PLACEMENT_TYPE", b.toString().toLowerCase());
    }
    Iterator localIterator = b(d).entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a(localHashMap, (String)localEntry.getKey(), (String)localEntry.getValue());
    }
    if (i != null)
    {
      a(localHashMap, "WIDTH", String.valueOf(i.getWidth()));
      a(localHashMap, "HEIGHT", String.valueOf(i.getHeight()));
    }
    a(localHashMap, "ADAPTERS", com.facebook.ads.internal.adapters.f.a(b));
    if (e != null) {
      a(localHashMap, "TEMPLATE_ID", String.valueOf(e.a()));
    }
    if (g != null) {
      a(localHashMap, "REQUEST_TYPE", String.valueOf(g.a()));
    }
    if (f) {
      a(localHashMap, "TEST_MODE", "1");
    }
    if (h != 0) {
      a(localHashMap, "NUM_ADS_REQUESTED", String.valueOf(h));
    }
    a(localHashMap, "CLIENT_EVENTS", com.facebook.ads.internal.util.c.a());
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.dto.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */