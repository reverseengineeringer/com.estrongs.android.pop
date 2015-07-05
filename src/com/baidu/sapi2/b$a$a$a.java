package com.baidu.sapi2;

import org.json.JSONException;
import org.json.JSONObject;

public class b$a$a$a
{
  public String a;
  public long b = 0L;
  public String c;
  
  public static a a(JSONObject paramJSONObject)
  {
    a locala = new a();
    if (paramJSONObject != null)
    {
      a = paramJSONObject.optString("download_url");
      b = paramJSONObject.optLong("version");
      c = paramJSONObject.optString("hash");
    }
    return locala;
  }
  
  JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("download_url", a);
      localJSONObject.put("version", b);
      localJSONObject.put("hash", c);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */