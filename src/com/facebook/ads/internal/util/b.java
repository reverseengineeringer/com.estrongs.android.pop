package com.facebook.ads.internal.util;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  public static String a = null;
  private String b;
  private Map<String, Object> c;
  private int d;
  private String e;
  
  public b(String paramString1, Map<String, Object> paramMap, int paramInt, String paramString2)
  {
    b = paramString1;
    c = paramMap;
    d = paramInt;
    e = paramString2;
  }
  
  public static b a(long paramLong, b.a parama, String paramString)
  {
    long l = System.currentTimeMillis();
    HashMap localHashMap = new HashMap();
    localHashMap.put("Time", String.valueOf(l - paramLong));
    localHashMap.put("AdAction", String.valueOf(f));
    return new b("bounceback", localHashMap, (int)(l / 1000L), paramString);
  }
  
  public static b a(Throwable paramThrowable, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("ex", paramThrowable.getClass().getSimpleName());
    localHashMap.put("ex_msg", paramThrowable.getMessage());
    int i = (int)(System.currentTimeMillis() / 1000L);
    if (paramString != null) {}
    for (;;)
    {
      return new b("error", localHashMap, i, paramString);
      paramString = a;
    }
  }
  
  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("name", b);
      localJSONObject.put("data", new JSONObject(c));
      localJSONObject.put("time", d);
      localJSONObject.put("request_id", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */