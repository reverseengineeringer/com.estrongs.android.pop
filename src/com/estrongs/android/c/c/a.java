package com.estrongs.android.c.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.duapps.a.a.b;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.l;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  public static void a(Context paramContext)
  {
    paramContext = b.a(paramContext);
    if (paramContext != null) {}
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("event", "apk_sign");
      localJSONObject.put(paramContext, 1);
      l.c("ChannelReport", "signTag :" + paramContext);
      c.a(FexApplication.a()).a("sign", "apk_sign", localJSONObject);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    long l1 = -1L;
    long l3 = System.currentTimeMillis();
    for (;;)
    {
      try
      {
        long l2 = getPackageInfogetPackageName0firstInstallTime;
        l1 = l2;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        continue;
      }
      try
      {
        paramContext = new JSONObject();
        paramContext.put("r", paramString);
        paramContext.put("r_t", l3);
        paramContext.put("r_t_d", l3 - l1);
        c.a(FexApplication.a()).a("install_referrer", "install_refer", paramContext, false);
        l.c("ChannelReport", "install reffer sucessinstall_referrer,referrer= " + paramString);
        return;
      }
      catch (JSONException paramContext) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */