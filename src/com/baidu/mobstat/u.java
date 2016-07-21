package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import org.json.JSONException;
import org.json.JSONObject;

public class u
{
  public static JSONObject a(Context paramContext)
  {
    localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("s", Build.VERSION.SDK_INT);
      localJSONObject.put("sv", Build.VERSION.RELEASE);
      localJSONObject.put("ii", cu.a(2, paramContext));
      localJSONObject.put("w", cu.b(paramContext));
      localJSONObject.put("h", cu.c(paramContext));
      localJSONObject.put("ly", ba.d);
      localJSONObject.put("pv", "7");
      Object localObject = paramContext.getPackageName();
      PackageManager localPackageManager = paramContext.getPackageManager();
      try
      {
        localObject = localPackageManager.getPackageInfo((String)localObject, 0);
        localJSONObject.put("pn", cu.f(2, paramContext));
        localJSONObject.put("a", versionCode);
        localJSONObject.put("n", versionName);
        localJSONObject.put("mc", cu.b(2, paramContext));
        localJSONObject.put("bm", cu.d(2, paramContext));
        localJSONObject.put("m", Build.MODEL);
        return localJSONObject;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          bb.a(localException);
        }
      }
      return localJSONObject;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */