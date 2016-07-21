package com.baidu.mobstat;

import org.json.JSONException;
import org.json.JSONObject;

class o
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  public o(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    paramString2 = paramString3;
    if (paramString3 == null) {
      paramString2 = "";
    }
    paramString3 = paramString4;
    if (paramString4 == null) {
      paramString3 = "";
    }
    a = str;
    b = paramString1;
    c = paramString2;
    d = paramString3;
  }
  
  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("n", a);
      localJSONObject.put("v", b);
      localJSONObject.put("c", c);
      localJSONObject.put("a", d);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      bb.b(localJSONException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */