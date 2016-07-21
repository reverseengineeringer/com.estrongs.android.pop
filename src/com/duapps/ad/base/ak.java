package com.duapps.ad.base;

import org.json.JSONObject;

public class ak
{
  public JSONObject a;
  public JSONObject b;
  public long c;
  
  public String a()
  {
    if (b == null) {
      return "NETWORK_FAIL";
    }
    return b.optString("msg");
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */