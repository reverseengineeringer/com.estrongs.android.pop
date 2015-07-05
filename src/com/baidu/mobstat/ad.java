package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;
import org.json.JSONArray;
import org.json.JSONObject;

class ad
{
  private static ad a = new ad();
  private boolean b = false;
  
  public static ad a()
  {
    return a;
  }
  
  public void a(Context paramContext)
  {
    e.a("sdkstat", "openExceptonAnalysis");
    if (!b)
    {
      b = true;
      u.a().a(paramContext);
    }
  }
  
  public void b(Context paramContext)
  {
    if (paramContext == null) {
      e.a("sdkstat", "exceptonAnalysis, context=null");
    }
    for (;;)
    {
      return;
      JSONArray localJSONArray = u.a().b(paramContext);
      if (localJSONArray == null)
      {
        e.a("sdkstat", "no exception str");
        return;
      }
      e.a("sdkstat", "move exception cache to stat cache");
      int i = 0;
      try
      {
        while (i < localJSONArray.length())
        {
          JSONObject localJSONObject = (JSONObject)localJSONArray.get(i);
          DataCore.getInstance().putException(localJSONObject.getLong("t"), localJSONObject.getString("c"), localJSONObject.getString("y"), localJSONObject.getString("v"));
          DataCore.getInstance().flush(paramContext);
          i += 1;
        }
        return;
      }
      catch (Exception paramContext)
      {
        e.a("sdkstat", paramContext);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */