package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

class AppsFlyerLib$InstallAttributionIdFetcher
  extends AppsFlyerLib.AttributionIdFetcher
{
  public AppsFlyerLib$InstallAttributionIdFetcher(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService)
  {
    super(paramContext, paramString, paramScheduledExecutorService);
  }
  
  public String a()
  {
    return "https://api.appsflyer.com/install_data/v3/";
  }
  
  protected void a(String paramString, int paramInt)
  {
    AppsFlyerLib.b().a(paramString);
    if ((paramInt >= 400) && (paramInt < 500))
    {
      paramInt = ((Context)a.get()).getSharedPreferences("appsflyer-data", 0).getInt("appsflyerConversionDataRequestRetries", 0);
      AppsFlyerLib.a((Context)a.get(), "appsflyerConversionDataRequestRetries", paramInt + 1);
    }
  }
  
  protected void a(Map<String, String> paramMap)
  {
    AppsFlyerLib.b().a(paramMap);
    ((Context)a.get()).getSharedPreferences("appsflyer-data", 0);
    AppsFlyerLib.a((Context)a.get(), "appsflyerConversionDataRequestRetries", 0);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.InstallAttributionIdFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */