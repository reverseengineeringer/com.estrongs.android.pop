package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class bs
  implements gw
{
  private static final String a = bs.class.getSimpleName();
  private static final Map<String, gw> b = a();
  
  private static gw a(String paramString)
  {
    return (gw)b.get(paramString);
  }
  
  private static Map<String, gw> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("AdMob".toUpperCase(Locale.US), new by());
    localHashMap.put("Millennial Media".toUpperCase(Locale.US), new ce());
    localHashMap.put("InMobi".toUpperCase(Locale.US), new ca());
    localHashMap.put("Facebook Audience Network".toUpperCase(Locale.US), new bv());
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public gt b(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {
      paramContext = null;
    }
    Object localObject;
    do
    {
      return paramContext;
      if (params.l().a() == null) {
        return null;
      }
      localObject = lad;
      if ((localObject == null) || (((List)localObject).isEmpty())) {
        return null;
      }
      localObject = (cj)((List)localObject).get(0);
      if (localObject == null) {
        return null;
      }
      localObject = c;
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      gw localgw = a(((String)localObject).toUpperCase(Locale.US));
      if (localgw == null) {
        return null;
      }
      kg.a(3, a, "Creating ad network view for type: " + (String)localObject);
      params = localgw.b(paramContext, params);
      paramContext = params;
    } while (params != null);
    kg.b(a, "Cannot create ad network view for type: " + (String)localObject);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */