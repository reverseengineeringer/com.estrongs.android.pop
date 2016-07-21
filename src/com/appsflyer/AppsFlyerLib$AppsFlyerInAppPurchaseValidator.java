package com.appsflyer;

import android.content.Context;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class AppsFlyerLib$AppsFlyerInAppPurchaseValidator
  extends AppsFlyerLib.ValidateInAppPurchase
{
  public String a()
  {
    return "https://sdk-services.appsflyer.com/validate-android-signature";
  }
  
  protected void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, String paramString4)
  {
    if (AppsFlyerLib.e() != null)
    {
      if (paramString4 != null) {
        break label159;
      }
      AppsFlyerLib.e().a();
      if (!paramBoolean) {
        break label148;
      }
      Log.i("AppsFlyer_3.2", "Validate in app purchase success");
    }
    for (;;)
    {
      paramString4 = AppsFlyerLib.d(paramString1);
      HashMap localHashMap = new HashMap();
      localHashMap.put("af_content_id", paramString4.get("productId"));
      localHashMap.put("af_validated", Boolean.valueOf(paramBoolean));
      localHashMap.put("af_param_2", paramString1);
      localHashMap.put("af_revenue", paramString2);
      localHashMap.put("af_currency", paramString3);
      if (paramHashMap != null) {
        localHashMap.put("af_param_1", paramHashMap);
      }
      AppsFlyerLib.a((Context)a.get(), "af_purchase", localHashMap);
      return;
      label148:
      Log.i("AppsFlyer_3.2", "Validate in app purchase failed");
      continue;
      label159:
      AppsFlyerLib.e().a(paramString4);
      Log.i("AppsFlyer_3.2", "Validate in app purchase failed: error : " + paramString4);
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.AppsFlyerInAppPurchaseValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */