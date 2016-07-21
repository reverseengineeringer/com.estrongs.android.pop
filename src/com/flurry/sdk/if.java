package com.flurry.sdk;

import android.location.Location;
import java.util.Map;

public class if
  extends kl
{
  private static final String a = if.class.getSimpleName();
  
  private String a(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    if (a("timestamp_epoch_millis", paramString2))
    {
      paramMap = String.valueOf(System.currentTimeMillis());
      kg.a(3, a, "Replacing param timestamp_epoch_millis with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("session_duration_millis", paramString2))
    {
      paramMap = Long.toString(je.a().f());
      kg.a(3, a, "Replacing param session_duration_millis with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("fg_timespent_millis", paramString2))
    {
      paramMap = Long.toString(je.a().f());
      kg.a(3, a, "Replacing param fg_timespent_millis with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    Object localObject;
    if (a("install_referrer", paramString2))
    {
      localObject = new hm().b();
      paramMap = (Map<String, String>)localObject;
      if (localObject == null) {
        paramMap = "";
      }
      kg.a(3, a, "Replacing param install_referrer with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("geo_latitude", paramString2))
    {
      localObject = jj.a().e();
      paramMap = "";
      if (localObject != null) {
        paramMap = "" + lt.a(((Location)localObject).getLatitude(), 3);
      }
      kg.a(3, a, "Replacing param geo_latitude with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("geo_longitude", paramString2))
    {
      localObject = jj.a().e();
      paramMap = "";
      if (localObject != null) {
        paramMap = "" + lt.a(((Location)localObject).getLongitude(), 3);
      }
      kg.a(3, a, "Replacing param geo_longitude with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("publisher_user_id", paramString2))
    {
      paramMap = (String)lk.a().a("UserId");
      kg.a(3, a, "Replacing param publisher_user_id with: " + paramMap);
      return paramString1.replace(paramString2, lt.c(paramMap));
    }
    if (a("event_name", paramString2))
    {
      if ((paramMap != null) && (paramMap.containsKey("event_name")))
      {
        kg.a(3, a, "Replacing param event_name with: " + (String)paramMap.get("event_name"));
        return paramString1.replace(paramString2, lt.c((String)paramMap.get("event_name")));
      }
      kg.a(3, a, "Replacing param event_name with empty string");
      return paramString1.replace(paramString2, "");
    }
    if (a("event_time_millis", paramString2))
    {
      if ((paramMap != null) && (paramMap.containsKey("event_time_millis")))
      {
        kg.a(3, a, "Replacing param event_time_millis with: " + (String)paramMap.get("event_time_millis"));
        return paramString1.replace(paramString2, lt.c((String)paramMap.get("event_time_millis")));
      }
      kg.a(3, a, "Replacing param event_time_millis with empty string");
      return paramString1.replace(paramString2, "");
    }
    kg.a(3, a, "Unknown param: " + paramString2);
    return paramString1.replace(paramString2, "");
  }
  
  public String a(String paramString, Map<String, String> paramMap)
  {
    String str2 = a(paramString);
    String str1 = paramString;
    for (paramString = str2; paramString != null; paramString = a(str1)) {
      str1 = a(str1, paramString, paramMap);
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */