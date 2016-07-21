package com.baidu.mobstat;

import org.json.JSONException;
import org.json.JSONObject;

class s
{
  private String a;
  private String b;
  private String c;
  
  public s(String paramString1, String paramString2, String paramString3)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    a = str;
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    b = paramString1;
    paramString1 = paramString3;
    if (paramString3 == null) {
      paramString1 = "";
    }
    c = paramString1;
  }
  
  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("n", a);
      localJSONObject.put("v", b);
      localJSONObject.put("w", c);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      bb.b(localJSONException);
    }
    return null;
  }
  
  public String b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */