package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.appsflyer.cache.CacheManager;
import com.appsflyer.cache.RequestCacheData;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;

class AppsFlyerLib$SendToServerRunnable
  implements Runnable
{
  Map<String, String> a;
  boolean b;
  private String c;
  private WeakReference<Context> d = null;
  
  private AppsFlyerLib$SendToServerRunnable(String paramString, Map<String, String> paramMap, Context paramContext, boolean paramBoolean)
  {
    c = paramString;
    a = paramMap;
    d = new WeakReference(paramContext);
    b = paramBoolean;
  }
  
  public void run()
  {
    boolean bool2 = true;
    String str = AppsFlyerLib.b(a);
    try
    {
      localObject1 = (Context)d.get();
      if (localObject1 == null) {
        break label481;
      }
      localObject2 = AppsFlyerProperties.a().a((Context)localObject1);
      if ((localObject2 != null) && (((String)localObject2).length() > 0) && (a.get("referrer") == null)) {
        a.put("referrer", localObject2);
      }
      bool3 = "true".equals(((Context)localObject1).getSharedPreferences("appsflyer-data", 0).getString("sentSuccessfully", ""));
      localObject2 = (String)a.get("eventName");
      if (localObject2 != null) {
        break label493;
      }
      bool1 = true;
      int i = AppsFlyerLib.a((Context)localObject1, "appsFlyerCount", bool1);
      a.put("counter", Integer.toString(i));
      localObject3 = a;
      if (localObject2 == null) {
        break label498;
      }
      bool1 = true;
      label164:
      ((Map)localObject3).put("iaecounter", Integer.toString(AppsFlyerLib.a((Context)localObject1, "appsFlyerInAppEventCount", bool1)));
      a.put("timepassedsincelastlaunch", Long.toString(AppsFlyerLib.a((Context)localObject1, true)));
      if ((!b) || (i != 1)) {
        break label486;
      }
      AppsFlyerProperties.a().d();
    }
    catch (Throwable localThrowable)
    {
      Object localObject1;
      Object localObject3;
      Log.e(str, localThrowable.getMessage(), localThrowable);
      return;
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        boolean bool3;
        label452:
        Object localObject2 = null;
        continue;
        label481:
        bool1 = false;
        continue;
        label486:
        bool1 = bool3;
      }
    }
    localObject1 = a;
    if (!bool1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      ((Map)localObject1).put("isFirstCall", Boolean.toString(bool1));
      localObject2 = (String)a.get("appsflyerKey");
      if ((localObject2 == null) || (((String)localObject2).length() == 0))
      {
        Log.d(str, "Not sending data yet, waiting for dev key");
        return;
      }
      localObject1 = new HashUtils().a(a);
      a.put("af_v", localObject1);
      localObject1 = AppsFlyerLib.a(a);
      for (;;)
      {
        try
        {
          localObject3 = c;
          WeakReference localWeakReference = d;
          if ((!b) || (AppsFlyerLib.b() == null)) {
            break label452;
          }
          bool1 = bool2;
          AppsFlyerLib.a((String)localObject3, (String)localObject1, (String)localObject2, localWeakReference, null, str, bool1);
          return;
        }
        catch (IOException localIOException2)
        {
          localObject2 = localObject1;
          localObject1 = localIOException2;
        }
        if ((localObject2 == null) || (d == null) || (c.contains("&isCachedRequest=true&timeincache="))) {
          break;
        }
        Log.e(str, ((IOException)localObject1).getMessage(), (Throwable)localObject1);
        CacheManager.a().a(new RequestCacheData(c, (String)localObject2, "3.2"), (Context)d.get());
        return;
        bool1 = false;
      }
      return;
      label493:
      bool1 = false;
      break;
      label498:
      bool1 = false;
      break label164;
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.SendToServerRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */