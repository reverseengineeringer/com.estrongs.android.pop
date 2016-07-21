package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;

class p
{
  static p a = new p();
  
  public void a(Context paramContext, String paramString1, String paramString2)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Object localObject = "unkown";
    paramContext = (Context)localObject;
    if (!"android.intent.action.PACKAGE_REMOVED".equals(paramString1)) {}
    try
    {
      paramContext = getPackageInfo8192versionName;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        for (;;)
        {
          localObject = new JSONObject();
          ((JSONObject)localObject).put("n", paramString2);
          ((JSONObject)localObject).put("a", paramString1);
          ((JSONObject)localObject).put("v", paramContext);
          paramContext = new JSONArray();
          paramContext.put(localObject);
          paramString1 = new StringBuilder();
          paramString1.append(System.currentTimeMillis());
          paramString2 = new JSONObject();
          paramString2.put("app_change", paramContext);
          paramString2.put("meta-data", paramString1.toString());
          paramContext = cj.a(paramString2.toString().getBytes());
          if (!TextUtils.isEmpty(paramContext))
          {
            long l = System.currentTimeMillis();
            x.d.a(l, paramContext);
          }
          return;
          paramContext = paramContext;
          bb.a(paramContext);
          paramContext = (Context)localObject;
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          bb.b(paramContext.getMessage());
          paramContext = "";
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */