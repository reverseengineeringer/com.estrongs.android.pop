package com.flurry.sdk;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class hn
{
  private static final String a = hn.class.getSimpleName();
  
  public Map<String, List<String>> a(String paramString)
  {
    kg.a(3, a, "Parsing referrer map");
    if (paramString == null) {
      return Collections.emptyMap();
    }
    HashMap localHashMap = new HashMap();
    Object localObject1 = paramString.split("&");
    int i = localObject1.length;
    int j = localObject1.length;
    i = 0;
    if (i < j)
    {
      String str = localObject1[i];
      Object localObject2 = str.split("=");
      if (localObject2.length != 2) {
        kg.a(5, a, "Invalid referrer Element: " + str + " in referrer tag " + paramString);
      }
      for (;;)
      {
        i += 1;
        break;
        str = URLDecoder.decode(localObject2[0]);
        localObject2 = URLDecoder.decode(localObject2[1]);
        if (localHashMap.get(str) == null) {
          localHashMap.put(str, new ArrayList());
        }
        ((List)localHashMap.get(str)).add(localObject2);
      }
    }
    paramString = localHashMap.entrySet().iterator();
    while (paramString.hasNext())
    {
      localObject1 = (Map.Entry)paramString.next();
      kg.a(3, a, "entry: " + (String)((Map.Entry)localObject1).getKey() + "=" + ((Map.Entry)localObject1).getValue());
    }
    paramString = new StringBuilder();
    if (localHashMap.get("utm_source") == null) {
      paramString.append("Campaign Source is missing.\n");
    }
    if (localHashMap.get("utm_medium") == null) {
      paramString.append("Campaign Medium is missing.\n");
    }
    if (localHashMap.get("utm_campaign") == null) {
      paramString.append("Campaign Name is missing.\n");
    }
    if (paramString.length() > 0) {
      kg.a(5, a, "Detected missing referrer keys : " + paramString.toString());
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */