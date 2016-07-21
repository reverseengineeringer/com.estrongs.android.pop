package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.t;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class f
{
  private static final Set<h> a = new HashSet();
  private static final Map<AdPlacementType, String> b = new ConcurrentHashMap();
  
  static
  {
    h[] arrayOfh = h.values();
    int j = arrayOfh.length;
    int i = 0;
    for (;;)
    {
      h localh;
      Class localClass1;
      label82:
      Class localClass4;
      Class localClass2;
      if (i < j)
      {
        localh = arrayOfh[i];
        switch (f.1.a[g.ordinal()])
        {
        default: 
          localClass1 = null;
          if (localClass1 != null)
          {
            localClass4 = d;
            localClass2 = localClass4;
            if (localClass4 != null) {
              break;
            }
          }
          break;
        }
      }
      try
      {
        localClass2 = Class.forName(e);
        if ((localClass2 != null) && (localClass1.isAssignableFrom(localClass2))) {
          a.add(localh);
        }
        i += 1;
        continue;
        localClass1 = BannerAdapter.class;
        break label82;
        localClass1 = InterstitialAdapter.class;
        break label82;
        localClass1 = p.class;
        break label82;
        return;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        for (;;)
        {
          Class localClass3 = localClass4;
        }
      }
    }
  }
  
  public static AdAdapter a(g paramg, AdPlacementType paramAdPlacementType)
  {
    try
    {
      h localh = b(paramg, paramAdPlacementType);
      if ((localh != null) && (a.contains(localh)))
      {
        paramAdPlacementType = d;
        paramg = paramAdPlacementType;
        if (paramAdPlacementType == null) {
          paramg = Class.forName(e);
        }
        paramg = (AdAdapter)paramg.newInstance();
        return paramg;
      }
    }
    catch (Exception paramg)
    {
      paramg.printStackTrace();
    }
    return null;
  }
  
  public static AdAdapter a(String paramString, AdPlacementType paramAdPlacementType)
  {
    return a(g.a(paramString), paramAdPlacementType);
  }
  
  public static String a(AdPlacementType paramAdPlacementType)
  {
    if (b.containsKey(paramAdPlacementType)) {
      return (String)b.get(paramAdPlacementType);
    }
    Object localObject = new HashSet();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (g == paramAdPlacementType) {
        ((Set)localObject).add(f.toString());
      }
    }
    localObject = t.a((Set)localObject, ",");
    b.put(paramAdPlacementType, localObject);
    return (String)localObject;
  }
  
  private static h b(g paramg, AdPlacementType paramAdPlacementType)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if ((f == paramg) && (g == paramAdPlacementType)) {
        return localh;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */