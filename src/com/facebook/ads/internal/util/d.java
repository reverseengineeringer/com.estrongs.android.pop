package com.facebook.ads.internal.util;

import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dto.b;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class d
{
  private static Map<String, Long> a = new ConcurrentHashMap();
  private static Map<String, Long> b = new ConcurrentHashMap();
  private static Map<String, String> c = new ConcurrentHashMap();
  
  private static long a(String paramString, b paramb)
  {
    long l = -1000L;
    if (a.containsKey(paramString))
    {
      l = ((Long)a.get(paramString)).longValue();
      return l;
    }
    switch (d.1.a[paramb.ordinal()])
    {
    case 2: 
    case 3: 
    default: 
      return -1000L;
    }
    return 15000L;
  }
  
  public static void a(long paramLong, com.facebook.ads.internal.dto.e parame)
  {
    a.put(d(parame), Long.valueOf(paramLong));
  }
  
  public static void a(String paramString, com.facebook.ads.internal.dto.e parame)
  {
    c.put(d(parame), paramString);
  }
  
  public static boolean a(com.facebook.ads.internal.dto.e parame)
  {
    String str = d(parame);
    if (!b.containsKey(str)) {
      return false;
    }
    long l1 = ((Long)b.get(str)).longValue();
    long l2 = a(str, parame.b());
    return System.currentTimeMillis() - l1 < l2;
  }
  
  public static void b(com.facebook.ads.internal.dto.e parame)
  {
    b.put(d(parame), Long.valueOf(System.currentTimeMillis()));
  }
  
  public static String c(com.facebook.ads.internal.dto.e parame)
  {
    return (String)c.get(d(parame));
  }
  
  private static String d(com.facebook.ads.internal.dto.e parame)
  {
    int j = 0;
    String str = parame.a();
    b localb = parame.b();
    com.facebook.ads.internal.e locale = e;
    int i;
    if (parame.c() == null)
    {
      i = 0;
      if (parame.c() != null) {
        break label95;
      }
    }
    for (;;)
    {
      return String.format("%s:%s:%s:%d:%d:%d", new Object[] { str, localb, locale, Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(parame.d()) });
      i = parame.c().getHeight();
      break;
      label95:
      j = parame.c().getWidth();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */