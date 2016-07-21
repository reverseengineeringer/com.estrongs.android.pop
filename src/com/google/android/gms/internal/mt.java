package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@me
public final class mt
{
  private String a;
  private String b;
  private String c;
  private List<String> d;
  private String e;
  private String f;
  private List<String> g;
  private long h = -1L;
  private boolean i = false;
  private final long j = -1L;
  private List<String> k;
  private long l = -1L;
  private int m = -1;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = true;
  private int r = 0;
  private final AdRequestInfoParcel s;
  
  public mt(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    s = paramAdRequestInfoParcel;
  }
  
  static String a(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      return (String)paramMap.get(0);
    }
    return null;
  }
  
  static long b(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      try
      {
        float f1 = Float.parseFloat(paramMap);
        return (f1 * 1000.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        b.e("Could not parse float from " + paramString + " header: " + paramMap);
      }
    }
    return -1L;
  }
  
  private void b(Map<String, List<String>> paramMap)
  {
    a = a(paramMap, "X-Afma-Ad-Size");
  }
  
  static List<String> c(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (paramMap != null) {
        return Arrays.asList(paramMap.trim().split("\\s+"));
      }
    }
    return null;
  }
  
  private void c(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Click-Tracking-Urls");
    if (paramMap != null) {
      d = paramMap;
    }
  }
  
  private void d(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Debug-Dialog");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      e = ((String)paramMap.get(0));
    }
  }
  
  private boolean d(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    return (paramMap != null) && (!paramMap.isEmpty()) && (Boolean.valueOf((String)paramMap.get(0)).booleanValue());
  }
  
  private void e(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Tracking-Urls");
    if (paramMap != null) {
      g = paramMap;
    }
  }
  
  private void f(Map<String, List<String>> paramMap)
  {
    long l1 = b(paramMap, "X-Afma-Interstitial-Timeout");
    if (l1 != -1L) {
      h = l1;
    }
  }
  
  private void g(Map<String, List<String>> paramMap)
  {
    f = a(paramMap, "X-Afma-ActiveView");
  }
  
  private void h(Map<String, List<String>> paramMap)
  {
    boolean bool2 = o;
    if ((s != null) && (s.n != 0)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      o = (bool1 | bool2);
      return;
    }
  }
  
  private void i(Map<String, List<String>> paramMap)
  {
    n |= d(paramMap, "X-Afma-Custom-Rendering-Allowed");
  }
  
  private void j(Map<String, List<String>> paramMap)
  {
    i |= d(paramMap, "X-Afma-Mediation");
  }
  
  private void k(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Manual-Tracking-Urls");
    if (paramMap != null) {
      k = paramMap;
    }
  }
  
  private void l(Map<String, List<String>> paramMap)
  {
    long l1 = b(paramMap, "X-Afma-Refresh-Rate");
    if (l1 != -1L) {
      l = l1;
    }
  }
  
  private void m(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Orientation");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (!"portrait".equalsIgnoreCase(paramMap)) {
        break label56;
      }
      m = ae.g().b();
    }
    label56:
    while (!"landscape".equalsIgnoreCase(paramMap)) {
      return;
    }
    m = ae.g().a();
  }
  
  private void n(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Use-HTTPS");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      p = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  private void o(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Content-Url-Opted-Out");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      q = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  private void p(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-OAuth-Token-Status");
    r = 0;
    if (paramMap == null) {}
    String str;
    do
    {
      return;
      while (!paramMap.hasNext()) {
        paramMap = paramMap.iterator();
      }
      str = (String)paramMap.next();
      if ("Clear".equalsIgnoreCase(str))
      {
        r = 1;
        return;
      }
    } while (!"No-Op".equalsIgnoreCase(str));
    r = 0;
  }
  
  public AdResponseParcel a(long paramLong)
  {
    return new AdResponseParcel(s, b, c, d, g, h, i, -1L, k, l, m, a, paramLong, e, f, n, o, p, q, false, r);
  }
  
  public void a(String paramString1, Map<String, List<String>> paramMap, String paramString2)
  {
    b = paramString1;
    c = paramString2;
    a(paramMap);
  }
  
  public void a(Map<String, List<String>> paramMap)
  {
    b(paramMap);
    c(paramMap);
    d(paramMap);
    e(paramMap);
    f(paramMap);
    j(paramMap);
    k(paramMap);
    l(paramMap);
    m(paramMap);
    g(paramMap);
    n(paramMap);
    i(paramMap);
    h(paramMap);
    o(paramMap);
    p(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */