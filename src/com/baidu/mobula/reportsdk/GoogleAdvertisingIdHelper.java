package com.baidu.mobula.reportsdk;

import android.content.Context;
import android.os.Looper;
import java.lang.reflect.Method;

public final class GoogleAdvertisingIdHelper
{
  private static final int CONNECTION_RESULT_SUCCESS = 0;
  static final String LOG_TAG = "MobulaReport";
  
  public static String getAdId(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot get advertising info on main thread.");
    }
    Object localObject = getMethod("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
    if (localObject == null)
    {
      LogHelper.d("MobulaReport", "isGooglePlayServicesAvailable = null");
      return null;
    }
    localObject = invokeMethod(null, (Method)localObject, new Object[] { paramContext });
    if ((localObject == null) || (((Integer)localObject).intValue() != 0))
    {
      LogHelper.d("MobulaReport", "CONNECTION_RESULT_SUCCESS =  " + localObject);
      return null;
    }
    localObject = getMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
    if (localObject == null)
    {
      LogHelper.d("MobulaReport", "getAdvertisingIdInfo =  null");
      return null;
    }
    paramContext = invokeMethod(null, (Method)localObject, new Object[] { paramContext });
    if (paramContext == null)
    {
      LogHelper.d("MobulaReport", "advertisingInfo =  null");
      return null;
    }
    localObject = getMethod(paramContext.getClass(), "getId", new Class[0]);
    Method localMethod = getMethod(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
    if ((localObject == null) || (localMethod == null))
    {
      LogHelper.d("MobulaReport", "getId =  null or isLimitAdTrackingEnabled = null");
      return null;
    }
    return (String)invokeMethod(paramContext, (Method)localObject, new Object[0]);
  }
  
  static Method getMethod(Class<?> paramClass, String paramString, Class<?>[] paramArrayOfClass)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramArrayOfClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  static Method getMethod(String paramString1, String paramString2, Class<?>[] paramArrayOfClass)
  {
    try
    {
      paramString1 = getMethod(Class.forName(paramString1), paramString2, paramArrayOfClass);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1) {}
    return null;
  }
  
  static Object invokeMethod(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    try
    {
      paramObject = paramMethod.invoke(paramObject, paramArrayOfObject);
      return paramObject;
    }
    catch (Exception paramObject) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.GoogleAdvertisingIdHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */