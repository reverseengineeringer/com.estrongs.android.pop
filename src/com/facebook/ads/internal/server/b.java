package com.facebook.ads.internal.server;

import com.facebook.ads.internal.dto.a;
import org.json.JSONArray;
import org.json.JSONObject;

public class b
{
  private static b a = new b();
  
  public static b a()
  {
    try
    {
      b localb = a;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private d a(JSONObject paramJSONObject)
  {
    int i = 0;
    d locald = new d();
    Object localObject1 = paramJSONObject.getJSONArray("placements").getJSONObject(0);
    paramJSONObject = com.facebook.ads.internal.dto.d.a(((JSONObject)localObject1).getJSONObject("definition"));
    a.a(paramJSONObject);
    paramJSONObject = paramJSONObject.a();
    if (((JSONObject)localObject1).has("ads"))
    {
      localObject1 = ((JSONObject)localObject1).getJSONArray("ads");
      while (i < ((JSONArray)localObject1).length())
      {
        a locala = new a(paramJSONObject);
        Object localObject2 = ((JSONArray)localObject1).getJSONObject(i);
        locala.a(((JSONObject)localObject2).getString("adapter"));
        JSONObject localJSONObject = ((JSONObject)localObject2).getJSONObject("data");
        localObject2 = ((JSONObject)localObject2).optJSONArray("trackers");
        if (localObject2 != null) {
          localJSONObject.put("trackers", localObject2);
        }
        locala.a(localJSONObject);
        a.a(locala);
        i += 1;
      }
    }
    return locald;
  }
  
  private e b(JSONObject paramJSONObject)
  {
    return new e(paramJSONObject.optString("message", ""));
  }
  
  public c a(String paramString)
  {
    paramString = new JSONObject(paramString);
    String str = paramString.optString("type");
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        paramString = paramString.optJSONObject("error");
        if (paramString == null) {
          break label129;
        }
        return b(paramString);
        if (str.equals("ads"))
        {
          i = 0;
          continue;
          if (str.equals("error")) {
            i = 1;
          }
        }
        break;
      }
    }
    return a(paramString);
    return b(paramString);
    label129:
    return new c(c.a.a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.server.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */