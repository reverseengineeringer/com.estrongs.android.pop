package com.flurry.android;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.flurry.sdk.hl;
import com.flurry.sdk.je;
import com.flurry.sdk.js;
import com.flurry.sdk.jt;
import com.flurry.sdk.ju;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.lg;
import com.flurry.sdk.lh;
import com.flurry.sdk.lk;
import com.flurry.sdk.lt;
import com.flurry.sdk.md;
import java.util.Date;
import java.util.Map;

public final class FlurryAgent
{
  private static final String a = FlurryAgent.class.getSimpleName();
  private static FlurryAgentListener b;
  private static final kb<lg> c = new FlurryAgent.1();
  
  public static void addOrigin(String paramString1, String paramString2)
  {
    addOrigin(paramString1, paramString2, null);
  }
  
  public static void addOrigin(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      throw new IllegalArgumentException("originName not specified");
    }
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      throw new IllegalArgumentException("originVersion not specified");
    }
    try
    {
      ju.a().a(paramString1, paramString2, paramMap);
      return;
    }
    catch (Throwable paramString1)
    {
      kg.a(a, "", paramString1);
    }
  }
  
  public static void addSessionProperty(String paramString1, String paramString2)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
    {
      kg.b(a, "String name or value passed to addSessionProperty was null or empty.");
      return;
    }
    je.a().a(paramString1, paramString2);
  }
  
  public static void clearLocation()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    lk.a().a("ExplicitLocation", null);
  }
  
  public static void endTimedEvent(String paramString)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to endTimedEvent was null.");
      return;
    }
    try
    {
      hl.a().b(paramString);
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Failed to signify the end of event: " + paramString, localThrowable);
    }
  }
  
  public static void endTimedEvent(String paramString, Map<String, String> paramMap)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to endTimedEvent was null.");
      return;
    }
    if (paramMap == null)
    {
      kg.b(a, "String eventId passed to endTimedEvent was null.");
      return;
    }
    try
    {
      hl.a().b(paramString, paramMap);
      return;
    }
    catch (Throwable paramMap)
    {
      kg.a(a, "Failed to signify the end of event: " + paramString, paramMap);
    }
  }
  
  public static int getAgentVersion()
  {
    return jt.a();
  }
  
  public static String getReleaseVersion()
  {
    return jt.f();
  }
  
  public static String getSessionId()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return null;
    }
    try
    {
      String str = je.a().c();
      return str;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "", localThrowable);
    }
    return null;
  }
  
  public static void init(Context paramContext, String paramString)
  {
    for (;;)
    {
      try
      {
        if (Build.VERSION.SDK_INT < 10)
        {
          kg.b(a, "Device SDK Version older than 10");
          return;
        }
        if (paramContext == null) {
          throw new NullPointerException("Null context");
        }
      }
      finally {}
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("apiKey not specified");
      }
      try
      {
        md.a();
        js.a(paramContext, paramString);
      }
      catch (Throwable paramContext)
      {
        kg.a(a, "", paramContext);
      }
    }
  }
  
  public static boolean isSessionActive()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return false;
    }
    try
    {
      boolean bool = lh.a().f();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "", localThrowable);
    }
    return false;
  }
  
  public static FlurryEventRecordStatus logEvent(FlurrySyndicationEventName paramFlurrySyndicationEventName, String paramString, Map<String, String> paramMap)
  {
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return localFlurryEventRecordStatus;
    }
    if (paramFlurrySyndicationEventName == null)
    {
      kg.b(a, "String eventName passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    if (TextUtils.isEmpty(paramString))
    {
      kg.b(a, "String syndicationId passed to logEvent was null or empty.");
      return localFlurryEventRecordStatus;
    }
    if (paramMap == null)
    {
      kg.b(a, "String parameters passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    try
    {
      paramString = hl.a().a(paramFlurrySyndicationEventName.toString(), paramString, paramMap);
      return paramString;
    }
    catch (Throwable paramString)
    {
      kg.a(a, "Failed to log event: " + paramFlurrySyndicationEventName.toString(), paramString);
    }
    return localFlurryEventRecordStatus;
  }
  
  public static FlurryEventRecordStatus logEvent(String paramString)
  {
    FlurryEventRecordStatus localFlurryEventRecordStatus1 = FlurryEventRecordStatus.kFlurryEventFailed;
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return localFlurryEventRecordStatus1;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to logEvent was null.");
      return localFlurryEventRecordStatus1;
    }
    try
    {
      FlurryEventRecordStatus localFlurryEventRecordStatus2 = hl.a().a(paramString);
      return localFlurryEventRecordStatus2;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Failed to log event: " + paramString, localThrowable);
    }
    return localFlurryEventRecordStatus1;
  }
  
  public static FlurryEventRecordStatus logEvent(String paramString, Map<String, String> paramMap)
  {
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return localFlurryEventRecordStatus;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    if (paramMap == null)
    {
      kg.b(a, "String parameters passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    try
    {
      paramMap = hl.a().a(paramString, paramMap);
      return paramMap;
    }
    catch (Throwable paramMap)
    {
      kg.a(a, "Failed to log event: " + paramString, paramMap);
    }
    return localFlurryEventRecordStatus;
  }
  
  public static FlurryEventRecordStatus logEvent(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return localFlurryEventRecordStatus;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    if (paramMap == null)
    {
      kg.b(a, "String parameters passed to logEvent was null.");
      return localFlurryEventRecordStatus;
    }
    try
    {
      paramMap = hl.a().a(paramString, paramMap, paramBoolean);
      return paramMap;
    }
    catch (Throwable paramMap)
    {
      kg.a(a, "Failed to log event: " + paramString, paramMap);
    }
    return localFlurryEventRecordStatus;
  }
  
  public static FlurryEventRecordStatus logEvent(String paramString, boolean paramBoolean)
  {
    FlurryEventRecordStatus localFlurryEventRecordStatus1 = FlurryEventRecordStatus.kFlurryEventFailed;
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return localFlurryEventRecordStatus1;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to logEvent was null.");
      return localFlurryEventRecordStatus1;
    }
    try
    {
      FlurryEventRecordStatus localFlurryEventRecordStatus2 = hl.a().a(paramString, paramBoolean);
      return localFlurryEventRecordStatus2;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "Failed to log event: " + paramString, localThrowable);
    }
    return localFlurryEventRecordStatus1;
  }
  
  public static void onEndSession(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramContext == null) {
      throw new NullPointerException("Null context");
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
    }
    try
    {
      lh.a().c(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "", paramContext);
    }
  }
  
  @Deprecated
  public static void onError(String paramString1, String paramString2, String paramString3)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString1 == null)
    {
      kg.b(a, "String errorId passed to onError was null.");
      return;
    }
    if (paramString2 == null)
    {
      kg.b(a, "String message passed to onError was null.");
      return;
    }
    if (paramString3 == null)
    {
      kg.b(a, "String errorClass passed to onError was null.");
      return;
    }
    try
    {
      hl.a().a(paramString1, paramString2, paramString3);
      return;
    }
    catch (Throwable paramString1)
    {
      kg.a(a, "", paramString1);
    }
  }
  
  public static void onError(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString1 == null)
    {
      kg.b(a, "String errorId passed to onError was null.");
      return;
    }
    if (paramString2 == null)
    {
      kg.b(a, "String message passed to onError was null.");
      return;
    }
    if (paramThrowable == null)
    {
      kg.b(a, "Throwable passed to onError was null.");
      return;
    }
    try
    {
      hl.a().a(paramString1, paramString2, paramThrowable);
      return;
    }
    catch (Throwable paramString1)
    {
      kg.a(a, "", paramString1);
    }
  }
  
  @Deprecated
  public static void onEvent(String paramString)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to onEvent was null.");
      return;
    }
    try
    {
      hl.a().c(paramString);
      return;
    }
    catch (Throwable paramString)
    {
      kg.a(a, "", paramString);
    }
  }
  
  @Deprecated
  public static void onEvent(String paramString, Map<String, String> paramMap)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String eventId passed to onEvent was null.");
      return;
    }
    if (paramMap == null)
    {
      kg.b(a, "Parameters Map passed to onEvent was null.");
      return;
    }
    try
    {
      hl.a().c(paramString, paramMap);
      return;
    }
    catch (Throwable paramString)
    {
      kg.a(a, "", paramString);
    }
  }
  
  public static void onPageView()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    try
    {
      hl.a().g();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.a(a, "", localThrowable);
    }
  }
  
  public static void onStartSession(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramContext == null) {
      throw new NullPointerException("Null context");
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    try
    {
      lh.a().b(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "", paramContext);
    }
  }
  
  @Deprecated
  public static void onStartSession(Context paramContext, String paramString)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramContext == null) {
      throw new NullPointerException("Null context");
    }
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new IllegalArgumentException("Api key not specified");
    }
    if (js.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    try
    {
      lh.a().b(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      kg.a(a, "", paramContext);
    }
  }
  
  public static void setAge(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 10) {
      kg.b(a, "Device SDK Version older than 10");
    }
    while ((paramInt <= 0) || (paramInt >= 110)) {
      return;
    }
    long l = new Date(new Date(System.currentTimeMillis() - paramInt * 31449600000L).getYear(), 1, 1).getTime();
    lk.a().a("Age", Long.valueOf(l));
  }
  
  public static void setCaptureUncaughtExceptions(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    lk.a().a("CaptureUncaughtExceptions", Boolean.valueOf(paramBoolean));
  }
  
  public static void setContinueSessionMillis(long paramLong)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramLong < 5000L)
    {
      kg.b(a, "Invalid time set for session resumption: " + paramLong);
      return;
    }
    lk.a().a("ContinueSessionMillis", Long.valueOf(paramLong));
  }
  
  public static void setFlurryAgentListener(FlurryAgentListener paramFlurryAgentListener)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramFlurryAgentListener == null)
    {
      kg.b(a, "Listener cannot be null");
      kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", c);
      return;
    }
    b = paramFlurryAgentListener;
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", c);
  }
  
  public static void setGender(byte paramByte)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    switch (paramByte)
    {
    default: 
      lk.a().a("Gender", Byte.valueOf((byte)-1));
      return;
    }
    lk.a().a("Gender", Byte.valueOf(paramByte));
  }
  
  public static void setLocation(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    Location localLocation = new Location("Explicit");
    localLocation.setLatitude(paramFloat1);
    localLocation.setLongitude(paramFloat2);
    lk.a().a("ExplicitLocation", localLocation);
  }
  
  @Deprecated
  public static void setLocationCriteria(Criteria paramCriteria)
  {
    if (Build.VERSION.SDK_INT < 10) {
      kg.b(a, "Device SDK Version older than 10");
    }
  }
  
  public static void setLogEnabled(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramBoolean)
    {
      kg.b();
      return;
    }
    kg.a();
  }
  
  public static void setLogEvents(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    lk.a().a("LogEvents", Boolean.valueOf(paramBoolean));
  }
  
  public static void setLogLevel(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    kg.a(paramInt);
  }
  
  public static void setPulseEnabled(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10) {
      kg.b(a, "Device SDK Version older than 10");
    }
    do
    {
      return;
      lk.a().a("ProtonEnabled", Boolean.valueOf(paramBoolean));
    } while (paramBoolean);
    lk.a().a("analyticsEnabled", Boolean.valueOf(true));
  }
  
  public static void setReportLocation(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    lk.a().a("ReportLocation", Boolean.valueOf(paramBoolean));
  }
  
  public static void setSessionOrigin(String paramString1, String paramString2)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (TextUtils.isEmpty(paramString1))
    {
      kg.b(a, "String originName passed to setSessionOrigin was null or empty.");
      return;
    }
    je.a().a(paramString1);
    je.a().b(paramString2);
  }
  
  public static void setUserId(String paramString)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String userId passed to setUserId was null.");
      return;
    }
    lk.a().a("UserId", lt.b(paramString));
  }
  
  public static void setVersionName(String paramString)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      kg.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramString == null)
    {
      kg.b(a, "String versionName passed to setVersionName was null.");
      return;
    }
    lk.a().a("VersionName", paramString);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryAgent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */