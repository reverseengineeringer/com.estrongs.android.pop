package com.dianxinos.library.notify.parser;

import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  public Map<String, String> a = new LinkedHashMap();
  public Map<String, String> b = new LinkedHashMap();
  public Map<String, String> c = new LinkedHashMap();
  public Map<String, String> d = new LinkedHashMap();
  public Map<String, String> e = new LinkedHashMap();
  public Set<String> f = new HashSet();
  public Set<String> g = new HashSet();
  public Set<String> h = new HashSet();
  public Set<String> i = new HashSet();
  
  public static b a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      if (e.c) {
        j.c("argument can not be empty");
      }
    }
    for (;;)
    {
      return null;
      try
      {
        paramString = new JSONObject(paramString);
        b localb = new b();
        if ("S0000".equals(paramString.optString("code")))
        {
          long l = paramString.optLong("lastModified", 0L);
          if (l > 0L)
          {
            a.put("strategy", paramString.optString("strategy"));
            a.put("lastModified", String.valueOf(l));
            b(b, f, paramString.optJSONArray("rcm"));
            b(c, g, paramString.optJSONArray("splash"));
            b(d, h, paramString.optJSONArray("pandora"));
            a(e, i, paramString.optJSONArray("channel"));
            return localb;
          }
        }
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  private static void a(Map<String, String> paramMap, Set<String> paramSet, JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return;
    }
    int k = paramJSONArray.length();
    int j = 0;
    label13:
    JSONObject localJSONObject;
    if (j < k)
    {
      localJSONObject = paramJSONArray.optJSONObject(j);
      if (localJSONObject != null) {
        break label38;
      }
    }
    for (;;)
    {
      j += 1;
      break label13;
      break;
      label38:
      String str1 = localJSONObject.optString("id");
      String str2 = localJSONObject.optString("category");
      String str3 = localJSONObject.optString("body");
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
        if ((localJSONObject.optInt("revoke") == 1) || (TextUtils.isEmpty(str3))) {
          paramSet.add(str2);
        } else {
          paramMap.put(str2, paramJSONArray.optString(j));
        }
      }
    }
  }
  
  private static void b(Map<String, String> paramMap, Set<String> paramSet, JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return;
    }
    if (e.c) {
      j.b("data: " + paramJSONArray.toString());
    }
    int k = paramJSONArray.length();
    int j = 0;
    label44:
    JSONObject localJSONObject;
    if (j < k)
    {
      localJSONObject = paramJSONArray.optJSONObject(j);
      if (localJSONObject != null) {
        break label69;
      }
    }
    for (;;)
    {
      j += 1;
      break label44;
      break;
      label69:
      String str = localJSONObject.optString("id");
      if (!TextUtils.isEmpty(str)) {
        if (localJSONObject.optInt("revoke") == 1) {
          paramSet.add(str);
        } else {
          paramMap.put(str, paramJSONArray.optString(j));
        }
      }
    }
  }
  
  public boolean a()
  {
    if ((!b.isEmpty()) || (!f.isEmpty())) {}
    while ((!c.isEmpty()) || (!g.isEmpty()) || (!d.isEmpty()) || (!h.isEmpty()) || (!e.isEmpty()) || (!i.isEmpty())) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.parser.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */