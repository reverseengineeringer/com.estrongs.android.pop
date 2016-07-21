package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class q
{
  static final q a = new q();
  
  private void a(boolean paramBoolean, PackageInfo paramPackageInfo, JSONArray paramJSONArray)
  {
    if ((paramBoolean) && (packageName.startsWith("com.android."))) {
      return;
    }
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("n", packageName);
      localJSONObject.put("v", String.valueOf(versionName));
      localJSONObject.put("f", firstInstallTime);
      localJSONObject.put("l", lastUpdateTime);
      paramJSONArray.put(localJSONObject);
      return;
    }
    catch (JSONException paramPackageInfo)
    {
      paramPackageInfo.printStackTrace();
    }
  }
  
  private void b(Context paramContext, boolean paramBoolean)
  {
    Object localObject1 = paramContext.getPackageManager();
    if (localObject1 == null) {}
    Object localObject3;
    label127:
    do
    {
      return;
      paramContext = new ArrayList(1);
      try
      {
        localObject1 = ((PackageManager)localObject1).getInstalledPackages(0);
        paramContext = (Context)localObject1;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          bb.b(localException1);
          continue;
          boolean bool = false;
        }
      }
      localObject1 = new JSONArray();
      paramContext = paramContext.iterator();
      for (;;)
      {
        if (!paramContext.hasNext()) {
          break label127;
        }
        localObject2 = (PackageInfo)paramContext.next();
        localObject3 = applicationInfo;
        if (localObject3 != null)
        {
          if ((flags & 0x1) == 0) {
            break;
          }
          bool = true;
          if (paramBoolean == bool) {
            a(paramBoolean, (PackageInfo)localObject2, (JSONArray)localObject1);
          }
        }
      }
    } while (localException1.length() == 0);
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(System.currentTimeMillis() + "|");
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      ((StringBuilder)localObject2).append(i);
      paramContext = "";
      try
      {
        localObject3 = new JSONObject();
        ((JSONObject)localObject3).put("app_list", localException1);
        ((JSONObject)localObject3).put("meta-data", ((StringBuilder)localObject2).toString());
        String str = cj.a(((JSONObject)localObject3).toString().getBytes());
        paramContext = str;
      }
      catch (Exception localException2)
      {
        long l;
        for (;;) {}
      }
      if (TextUtils.isEmpty(paramContext)) {
        break;
      }
      l = System.currentTimeMillis();
      x.b.a(l, paramContext);
      return;
    }
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      b(paramContext, paramBoolean);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */