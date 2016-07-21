package com.duapps.ad.base;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ag
{
  private static final String a = ag.class.getSimpleName();
  private static ag b;
  private Map<Integer, List<String>> c;
  private Map<Integer, String> d;
  private Map<Integer, String> e;
  private Map<Integer, String> f;
  private Context g;
  
  private ag(Context paramContext)
  {
    g = paramContext;
    c = new HashMap();
    d = new HashMap();
  }
  
  public static ag a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new ag(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  public static String b(Context paramContext)
  {
    return DuAdNetwork.c().b();
  }
  
  public List<Integer> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(c.keySet());
    return localArrayList;
  }
  
  public List<String> a(int paramInt)
  {
    return (List)c.get(Integer.valueOf(paramInt));
  }
  
  public void a(String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString)) {
        break label47;
      }
      throw new IllegalArgumentException("pidsJson cannot be null");
    }
    catch (JSONException paramString)
    {
      l.d(a, "JSON parse Exception :" + paramString.getMessage());
    }
    return;
    label47:
    Object localObject1 = new JSONObject(paramString);
    paramString = ((JSONObject)localObject1).optJSONArray("native");
    Object localObject2 = ((JSONObject)localObject1).optJSONArray("offerwall");
    int j = ((JSONArray)localObject2).length();
    label102:
    int i;
    Object localObject3;
    label192:
    label259:
    int m;
    int n;
    if (e == null)
    {
      e = new HashMap(j);
      break label406;
      while (i < j)
      {
        localObject3 = ((JSONArray)localObject2).getJSONObject(i);
        e.put(Integer.valueOf(((JSONObject)localObject3).getInt("pid")), ((JSONObject)localObject3).getString("fbids"));
        i += 1;
      }
      localObject1 = ((JSONObject)localObject1).optJSONArray("list");
      if (localObject1 != null)
      {
        k = ((JSONArray)localObject1).length();
        if (f != null) {
          break label411;
        }
        f = new HashMap(j);
        break label411;
        if (i < k)
        {
          localObject2 = ((JSONArray)localObject1).getJSONObject(i);
          localObject3 = ((JSONObject)localObject2).optString("fbids");
          if (TextUtils.isEmpty((CharSequence)localObject3)) {
            break label416;
          }
          f.put(Integer.valueOf(((JSONObject)localObject2).getInt("pid")), localObject3);
          break label416;
        }
      }
      int k = paramString.length();
      i = 0;
      if (i < k)
      {
        localObject1 = paramString.getJSONObject(i);
        m = ((JSONObject)localObject1).optInt("pid");
        localObject2 = new ArrayList();
        localObject3 = ((JSONObject)localObject1).optJSONArray("fbids");
        if ((localObject3 != null) && (((JSONArray)localObject3).length() > 0))
        {
          n = ((JSONArray)localObject3).length();
          j = 0;
        }
      }
    }
    for (;;)
    {
      if (j < n)
      {
        String str = ((JSONArray)localObject3).optString(j);
        if (!TextUtils.isEmpty(str)) {
          ((List)localObject2).add(str);
        }
      }
      else
      {
        c.put(Integer.valueOf(m), localObject2);
        localObject1 = ((JSONObject)localObject1).optString("amid");
        d.put(Integer.valueOf(m), localObject1);
        i += 1;
        break label259;
        break;
        label406:
        i = 0;
        break label102;
        label411:
        i = 0;
        break label192;
        label416:
        i += 1;
        break label192;
      }
      j += 1;
    }
  }
  
  public String b()
  {
    return r.k(g);
  }
  
  public String b(int paramInt)
  {
    return (String)e.get(Integer.valueOf(paramInt));
  }
  
  public String c(int paramInt)
  {
    return (String)d.get(Integer.valueOf(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */