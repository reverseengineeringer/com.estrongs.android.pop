package com.flurry.sdk;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class gz
  implements gw
{
  static final String a = gz.class.getSimpleName();
  private static final Map<String, gw> b = a();
  
  private static gw a(String paramString)
  {
    return (gw)b.get(paramString);
  }
  
  private static String a(co paramco)
  {
    if (paramco == null) {
      return null;
    }
    Object localObject = d;
    if ((localObject == null) || (((List)localObject).isEmpty())) {
      return null;
    }
    localObject = (cj)((List)localObject).get(0);
    if (localObject == null) {
      return null;
    }
    int i = a;
    if ((f == 1) || (i == 2) || (i == 1) || (i == 3)) {
      return "FLURRY";
    }
    if (i == 4) {
      return "THIRD_PARTY";
    }
    return null;
  }
  
  private static Map<String, gw> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("FLURRY", new gz.a(null));
    localHashMap.put("THIRD_PARTY", new bs());
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public gt b(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {}
    String str;
    do
    {
      return null;
      str = a(params.l().a());
    } while (str == null);
    gw localgw = a(str);
    if (localgw == null)
    {
      kg.e(a, "Cannot create ad banner for type: " + str);
      return null;
    }
    kg.a(3, a, "Creating ad banner for type: " + str);
    return localgw.b(paramContext, params);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */