package com.facebook.ads.internal.dto;

import com.facebook.ads.internal.server.AdPlacementType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class d
{
  private static final AdPlacementType k = AdPlacementType.UNKNOWN;
  protected AdPlacementType a = k;
  protected int b = 1;
  protected int c;
  protected int d = 0;
  protected int e = 20;
  protected int f = 0;
  protected int g = 1000;
  protected boolean h = false;
  public int i = -1;
  public int j = -1;
  
  private d(Map<String, String> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      label192:
      int m;
      switch (str.hashCode())
      {
      default: 
        m = -1;
      }
      for (;;)
      {
        switch (m)
        {
        default: 
          break;
        case 0: 
          a = AdPlacementType.fromString((String)localEntry.getValue());
          break;
          if (!str.equals("type")) {
            break label192;
          }
          m = 0;
          continue;
          if (!str.equals("min_viewability_percentage")) {
            break label192;
          }
          m = 1;
          continue;
          if (!str.equals("min_viewability_duration")) {
            break label192;
          }
          m = 2;
          continue;
          if (!str.equals("refresh")) {
            break label192;
          }
          m = 3;
          continue;
          if (!str.equals("refresh_threshold")) {
            break label192;
          }
          m = 4;
          continue;
          if (!str.equals("cacheable")) {
            break label192;
          }
          m = 5;
          continue;
          if (!str.equals("placement_width")) {
            break label192;
          }
          m = 6;
          continue;
          if (!str.equals("placement_height")) {
            break label192;
          }
          m = 7;
          continue;
          if (!str.equals("viewability_check_initial_delay")) {
            break label192;
          }
          m = 8;
          continue;
          if (!str.equals("viewability_check_interval")) {
            break label192;
          }
          m = 9;
        }
      }
      b = Integer.parseInt((String)localEntry.getValue());
      continue;
      c = Integer.parseInt((String)localEntry.getValue());
      continue;
      d = Integer.parseInt((String)localEntry.getValue());
      continue;
      e = Integer.parseInt((String)localEntry.getValue());
      continue;
      h = Boolean.valueOf((String)localEntry.getValue()).booleanValue();
      continue;
      i = Integer.parseInt((String)localEntry.getValue());
      continue;
      j = Integer.parseInt((String)localEntry.getValue());
      continue;
      f = Integer.parseInt((String)localEntry.getValue());
      continue;
      g = Integer.parseInt((String)localEntry.getValue());
    }
  }
  
  public static d a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, String.valueOf(paramJSONObject.opt(str)));
    }
    return new d(localHashMap);
  }
  
  public AdPlacementType a()
  {
    return a;
  }
  
  public long b()
  {
    return d * 1000;
  }
  
  public long c()
  {
    return e * 1000;
  }
  
  public boolean d()
  {
    return h;
  }
  
  public int e()
  {
    return b;
  }
  
  public int f()
  {
    return f;
  }
  
  public int g()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.dto.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */