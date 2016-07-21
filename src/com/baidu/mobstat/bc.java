package com.baidu.mobstat;

import org.json.JSONException;
import org.json.JSONObject;

public class bc
{
  public boolean a = false;
  public String b = "";
  public boolean c = false;
  
  public bc() {}
  
  public bc(JSONObject paramJSONObject)
  {
    try
    {
      a = paramJSONObject.getBoolean("SDK_BPLUS_SERVICE");
    }
    catch (Exception localException1)
    {
      try
      {
        for (;;)
        {
          b = paramJSONObject.getString("SDK_PRODUCT_LY");
          try
          {
            c = paramJSONObject.getBoolean("SDK_LOCAL_SERVER");
            return;
          }
          catch (Exception paramJSONObject)
          {
            bb.b(paramJSONObject);
          }
          localException1 = localException1;
          bb.b(localException1);
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          bb.b(localException2);
        }
      }
    }
  }
  
  public JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("SDK_BPLUS_SERVICE", a);
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        for (;;)
        {
          localJSONObject.put("SDK_PRODUCT_LY", b);
          try
          {
            localJSONObject.put("SDK_LOCAL_SERVER", c);
            return localJSONObject;
          }
          catch (JSONException localJSONException3)
          {
            bb.b(localJSONException3);
          }
          localJSONException1 = localJSONException1;
          bb.b(localJSONException1);
        }
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          bb.b(localJSONException2);
        }
      }
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */