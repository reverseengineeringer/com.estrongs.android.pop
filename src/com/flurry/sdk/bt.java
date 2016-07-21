package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class bt
  implements hg
{
  private static final String a = bt.class.getSimpleName();
  private static final Map<String, hg> b = a();
  
  private static hg a(String paramString)
  {
    return (hg)b.get(paramString);
  }
  
  private static Map<String, hg> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("AdMob".toUpperCase(Locale.US), new by());
    localHashMap.put("Millennial Media".toUpperCase(Locale.US), new ce());
    localHashMap.put("InMobi".toUpperCase(Locale.US), new ca());
    localHashMap.put("Facebook Audience Network".toUpperCase(Locale.US), new bv());
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public hf a(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {
      paramContext = null;
    }
    Object localObject;
    do
    {
      return paramContext;
      if ((params.l().a() == null) || (params.l().b() == null)) {
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
      hg localhg = a(((String)localObject).toUpperCase(Locale.US));
      if (localhg == null) {
        return null;
      }
      kg.a(3, a, "Creating ad network takeover launcher: " + localhg.getClass().getSimpleName() + " for type: " + (String)localObject);
      params = localhg.a(paramContext, params);
      paramContext = params;
    } while (params != null);
    kg.b(a, "Cannot create ad network takeover launcher for type: " + (String)localObject);
    return params;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */