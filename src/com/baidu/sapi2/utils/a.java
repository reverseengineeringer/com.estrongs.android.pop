package com.baidu.sapi2.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  private static final String a = "http://nsclick.baidu.com/v.gif";
  private static final Map<String, String> b = new HashMap();
  
  static
  {
    b.put("pid", "111");
    b.put("type", "1023");
    b.put("device", "android");
  }
  
  public static void a()
  {
    try
    {
      Iterator localIterator = c.a(getInstancegetSapiConfigurationcontext).n().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        a((String)localEntry.getKey(), (Map)localEntry.getValue());
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
  
  public static void a(String paramString, Map<String, String> paramMap)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return;
      try
      {
        SapiConfiguration localSapiConfiguration = SapiAccountManager.getInstance().getSapiConfiguration();
        c.a(context).a(paramString, paramMap);
        if (SapiUtils.hasActiveNetwork(context))
        {
          HashMap localHashMap = new HashMap();
          localHashMap.putAll(b);
          localHashMap.put("name", paramString);
          localHashMap.put("tpl", tpl);
          localHashMap.put("app_version", SapiUtils.getVersionName(context));
          localHashMap.put("sdk_version", "6.9.2");
          if (!TextUtils.isEmpty(clientId)) {
            localHashMap.put("cuid", clientId);
          }
          localHashMap.put("login_share_strategy", localSapiConfiguration.loginShareStrategy().getStrValue());
          localHashMap.put("v", String.valueOf(new Date().getTime()));
          if (paramMap != null)
          {
            paramMap = paramMap.entrySet().iterator();
            while (paramMap.hasNext())
            {
              Map.Entry localEntry = (Map.Entry)paramMap.next();
              if ((!TextUtils.isEmpty((CharSequence)localEntry.getKey())) && (!TextUtils.isEmpty((CharSequence)localEntry.getValue()))) {
                localHashMap.put(localEntry.getKey(), localEntry.getValue());
              }
            }
          }
          new Handler(Looper.getMainLooper()).post(new a.a(localSapiConfiguration, localHashMap, paramString));
        }
      }
      catch (Throwable paramString)
      {
        L.e(paramString);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */