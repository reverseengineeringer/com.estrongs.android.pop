package com.facebook.ads.internal.dto;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.g.a;

public class f
{
  public static final String a = Build.VERSION.RELEASE;
  public static String b = "";
  public static String c = "";
  public static String d = "";
  public static String e = "";
  public static String f = "";
  public static int g = 0;
  public static String h = "";
  public static int i = 0;
  public static String j = "";
  public static int k = 0;
  public static String l = "";
  public static String m = "";
  public static String n = "";
  public static boolean o = false;
  private static boolean p = false;
  
  public static void a(Context paramContext)
  {
    try
    {
      if (!p)
      {
        p = true;
        c(paramContext);
      }
      d(paramContext);
      return;
    }
    finally {}
  }
  
  public static void b(Context paramContext)
  {
    Object localObject2 = null;
    if (!p) {
      return;
    }
    for (;;)
    {
      try
      {
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("SDKIDFA", 0);
        if (localSharedPreferences.contains("attributionId")) {
          m = localSharedPreferences.getString("attributionId", "");
        }
        if (localSharedPreferences.contains("advertisingId"))
        {
          n = localSharedPreferences.getString("advertisingId", "");
          o = localSharedPreferences.getBoolean("limitAdTracking", o);
        }
        Object localObject1;
        boolean bool;
        paramContext.printStackTrace();
      }
      catch (Exception paramContext)
      {
        try
        {
          localObject1 = g.a(paramContext.getContentResolver());
        }
        catch (Exception paramContext)
        {
          localObject1 = null;
        }
        try
        {
          paramContext = com.facebook.ads.internal.f.a(paramContext, (g.a)localObject1);
          if (localObject1 != null)
          {
            localObject1 = a;
            if (localObject1 != null) {
              m = (String)localObject1;
            }
          }
          if (paramContext != null)
          {
            localObject1 = paramContext.a();
            bool = paramContext.b();
            if (localObject1 != null)
            {
              n = (String)localObject1;
              o = Boolean.valueOf(bool).booleanValue();
            }
          }
          paramContext = localSharedPreferences.edit();
          paramContext.putString("attributionId", m);
          paramContext.putString("advertisingId", n);
          paramContext.putBoolean("limitAdTracking", o);
          paramContext.apply();
          return;
        }
        catch (Exception paramContext)
        {
          for (;;) {}
        }
        paramContext = paramContext;
        paramContext.printStackTrace();
        return;
      }
      paramContext = (Context)localObject2;
    }
  }
  
  private static void c(Context paramContext)
  {
    Object localObject = paramContext.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
      d = packageName;
      f = versionName;
      g = versionCode;
      try
      {
        localObject = ((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 0));
        if ((localObject != null) && (((CharSequence)localObject).length() > 0)) {
          e = ((CharSequence)localObject).toString();
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        for (;;) {}
      }
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext != null)
      {
        paramContext = paramContext.getNetworkOperatorName();
        if ((paramContext != null) && (paramContext.length() > 0)) {
          h = paramContext;
        }
      }
      paramContext = Build.MANUFACTURER;
      if ((paramContext != null) && (paramContext.length() > 0)) {
        b = paramContext;
      }
      paramContext = Build.MODEL;
      if ((paramContext != null) && (paramContext.length() > 0)) {
        c = Build.MODEL;
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      for (;;) {}
    }
  }
  
  private static void d(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isConnectedOrConnecting()))
      {
        i = paramContext.getType();
        j = paramContext.getTypeName();
        k = paramContext.getSubtype();
        l = paramContext.getSubtypeName();
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.dto.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */