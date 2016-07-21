package com.facebook.ads.internal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.facebook.ads.internal.adapters.a;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

public class f
{
  public static Collection<String> a(JSONArray paramJSONArray)
  {
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0)) {
      return null;
    }
    HashSet localHashSet = new HashSet();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localHashSet.add(paramJSONArray.optString(i));
      i += 1;
    }
    return localHashSet;
  }
  
  public static boolean a(Context paramContext, a parama)
  {
    e locale = parama.a();
    if ((locale == null) || (locale == e.a)) {}
    do
    {
      return false;
      localObject = parama.c();
    } while ((localObject == null) || (((Collection)localObject).isEmpty()));
    Object localObject = ((Collection)localObject).iterator();
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
    } while (!a(paramContext, (String)((Iterator)localObject).next()));
    for (int i = 1;; i = 0)
    {
      if (locale == e.b) {}
      for (int j = 1; i == j; j = 0)
      {
        paramContext = parama.b();
        if (s.a(paramContext)) {
          break label139;
        }
        new o().execute(new String[] { paramContext });
        return false;
      }
      break;
      label139:
      return true;
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if (s.a(paramString)) {
      return false;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext.getPackageInfo(paramString, 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */