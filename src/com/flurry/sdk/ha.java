package com.flurry.sdk;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ha
  implements hg
{
  static final String a = ha.class.getSimpleName();
  private static final Map<String, hg> b = a();
  
  private static hg a(String paramString)
  {
    return (hg)b.get(paramString);
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
  
  private static Map<String, hg> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("FLURRY", new ha.a(null));
    localHashMap.put("THIRD_PARTY", new bt());
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public hf a(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {}
    String str;
    do
    {
      return null;
      str = a(params.l().a());
    } while (str == null);
    hg localhg = a(str);
    if (localhg == null)
    {
      kg.e(a, "Cannot create ad takeover for type: " + str);
      return null;
    }
    kg.a(3, a, "Creating ad takeover for type: " + str);
    return localhg.a(paramContext, params);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */