package com.flurry.sdk;

import android.content.Context;

public class lu
{
  private static final String a = lu.class.getSimpleName();
  private static String b = "com.google.android.gms.common.GooglePlayServicesUtil";
  private static String c = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
  
  static String a(Object paramObject, String paramString)
  {
    try
    {
      paramObject = (String)lw.a(paramObject, "getId").a();
      return (String)paramObject;
    }
    catch (Exception paramObject)
    {
      kg.b(a, "GOOGLE PLAY SERVICES ERROR: " + ((Exception)paramObject).getMessage());
      kg.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return paramString;
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      paramContext = lw.a(null, "isGooglePlayServicesAvailable").a(Class.forName(b)).a(Context.class, paramContext).a();
      if (paramContext != null)
      {
        int i = ((Integer)paramContext).intValue();
        if (i == 0) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramContext)
    {
      kg.b(a, "GOOGLE PLAY SERVICES EXCEPTION: " + paramContext.getMessage());
      kg.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return false;
  }
  
  static boolean a(Object paramObject, boolean paramBoolean)
  {
    try
    {
      paramObject = (Boolean)lw.a(paramObject, "isLimitAdTrackingEnabled").a();
      boolean bool = paramBoolean;
      if (paramObject != null) {
        bool = ((Boolean)paramObject).booleanValue();
      }
      return bool;
    }
    catch (Exception paramObject)
    {
      kg.b(a, "GOOGLE PLAY SERVICES ERROR: " + ((Exception)paramObject).getMessage());
      kg.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return paramBoolean;
  }
  
  public static jp b(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = lw.a(null, "getAdvertisingIdInfo").a(Class.forName(c)).a(Context.class, paramContext).a();
      return new jp(a(paramContext, null), a(paramContext, false));
    }
    catch (Exception paramContext)
    {
      kg.b(a, "GOOGLE PLAY SERVICES ERROR: " + paramContext.getMessage());
      kg.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */