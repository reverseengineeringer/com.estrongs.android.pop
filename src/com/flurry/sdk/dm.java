package com.flurry.sdk;

import java.util.List;
import org.json.JSONObject;

public class dm
{
  static List<String> a(JSONObject paramJSONObject, String paramString)
  {
    return lv.b(paramJSONObject.getJSONArray(paramString));
  }
  
  static String b(JSONObject paramJSONObject, String paramString)
  {
    return paramJSONObject.optString(paramString);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */