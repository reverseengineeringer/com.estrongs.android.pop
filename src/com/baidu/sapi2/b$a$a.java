package com.baidu.sapi2;

import org.json.JSONException;
import org.json.JSONObject;

public class b$a$a
{
  public String a;
  public String b;
  public b.a.a.a c = new b.a.a.a();
  
  static a a(JSONObject paramJSONObject)
  {
    a locala = new a();
    a = paramJSONObject.optString("id");
    b = paramJSONObject.optString("ref");
    c = b.a.a.a.a(paramJSONObject.optJSONObject("ref_entry"));
    return locala;
  }
  
  public static String a(String paramString)
  {
    return b(paramString).replace('/', '-');
  }
  
  public static String b(String paramString)
  {
    return paramString.replace(':', '/');
  }
  
  public static String c(String paramString)
  {
    return ".BD_SAPI_CACHE/" + b(paramString);
  }
  
  JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", a);
      localJSONObject.put("ref", b);
      localJSONObject.put("ref_entry", c.a());
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (a)paramObject;
    return a.equals(a);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */