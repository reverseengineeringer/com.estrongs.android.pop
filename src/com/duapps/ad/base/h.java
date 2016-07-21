package com.duapps.ad.base;

import android.content.Context;
import android.os.Looper;
import java.lang.reflect.Method;

public final class h
{
  static Object a(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    try
    {
      paramObject = paramMethod.invoke(paramObject, paramArrayOfObject);
      return paramObject;
    }
    catch (Exception paramObject) {}
    return null;
  }
  
  public static String a(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot get advertising info on main thread.");
    }
    Object localObject = a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
    if (localObject == null)
    {
      l.c("GMS", "isGooglePlayServicesAvailable = null");
      return null;
    }
    localObject = a(null, (Method)localObject, new Object[] { paramContext });
    if ((localObject == null) || (((Integer)localObject).intValue() != 0))
    {
      l.c("GMS", "CONNECTION_RESULT_SUCCESS =  " + localObject);
      return null;
    }
    localObject = a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
    if (localObject == null)
    {
      l.c("GMS", "getAdvertisingIdInfo =  null");
      return null;
    }
    paramContext = a(null, (Method)localObject, new Object[] { paramContext });
    if (paramContext == null)
    {
      l.c("GMS", "advertisingInfo =  null");
      return null;
    }
    localObject = a(paramContext.getClass(), "getId", new Class[0]);
    Method localMethod = a(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
    if ((localObject == null) || (localMethod == null))
    {
      l.c("GMS", "getId =  null or isLimitAdTrackingEnabled = null");
      return null;
    }
    return (String)a(paramContext, (Method)localObject, new Object[0]);
  }
  
  static Method a(Class<?> paramClass, String paramString, Class<?>[] paramArrayOfClass)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramArrayOfClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  static Method a(String paramString1, String paramString2, Class<?>[] paramArrayOfClass)
  {
    try
    {
      paramString1 = a(Class.forName(paramString1), paramString2, paramArrayOfClass);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */