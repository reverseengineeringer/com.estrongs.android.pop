package com.estrongs.android.recommand;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class a
{
  private static final String e = ;
  private String a = e;
  private int b;
  private Map<Integer, o> c = new TreeMap();
  private Map<String, o> d = new HashMap();
  
  private static String c()
  {
    int i = com.estrongs.android.i.a.a("Ad_Glispa_Cache_Size", 8);
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("type", 1);
      localJSONObject.put("name", "Glispa");
      localJSONObject.put("priority", 0);
      localJSONObject.put("number", 6);
      localJSONObject.put("url", "");
      localJSONObject.put("classname", "com.estrongs.android.recommand.provider.GlispaAppProvider");
      localJSONObject.put("cacheSize", i);
      localJSONObject.put("duration", 1800);
      Object localObject = new JSONArray();
      ((JSONArray)localObject).put(localJSONObject);
      localJSONObject = new JSONObject();
      localJSONObject.put("version", "1.0");
      localJSONObject.put("list", localObject);
      localObject = localJSONObject.toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  public o a(Integer paramInteger)
  {
    return (o)c.get(paramInteger);
  }
  
  public void a()
  {
    int i = 0;
    try
    {
      b = 0;
      JSONArray localJSONArray = new JSONObject(a).getJSONArray("list");
      while (i < localJSONArray.length())
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        o localo = new o();
        e = localJSONObject.getInt("number");
        a = localJSONObject.getInt("type");
        b = localJSONObject.getString("name");
        f = localJSONObject.getInt("priority");
        g = localJSONObject.getString("url");
        c = localJSONObject.getString("classname");
        d = localJSONObject.getInt("cacheSize");
        h = localJSONObject.getInt("duration");
        b += e;
        c.put(Integer.valueOf(f), localo);
        d.put(b, localo);
        i += 1;
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public Map<Integer, o> b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */