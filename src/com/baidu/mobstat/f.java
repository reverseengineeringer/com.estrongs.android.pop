package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.kirin.objects.LatitudeAndLongitude;
import com.baidu.kirin.objects.NetworkStatus;
import com.baidu.mobstat.util.c;
import com.baidu.mobstat.util.e;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class f
{
  public static String a()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
  }
  
  public static String a(Context paramContext)
  {
    return GetReverse.getCooperService(paramContext).getAppChannel(paramContext);
  }
  
  public static String a(Context paramContext, boolean paramBoolean)
  {
    LatitudeAndLongitude localLatitudeAndLongitude = new LatitudeAndLongitude();
    if (paramBoolean)
    {
      paramContext = (LocationManager)paramContext.getSystemService("location");
      Iterator localIterator = paramContext.getAllProviders().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        System.out.println((String)localObject);
        localObject = paramContext.getLastKnownLocation((String)localObject);
        if (localObject != null)
        {
          latitude = (((Location)localObject).getLatitude() + "");
          longitude = (((Location)localObject).getLongitude() + "");
        }
        else
        {
          latitude = "";
          longitude = "";
        }
      }
    }
    latitude = "";
    longitude = "";
    return latitude + "," + longitude;
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }
  
  public static String b(Context paramContext)
  {
    return GetReverse.getCooperService(paramContext).getAppKey(paramContext);
  }
  
  public static String c(Context paramContext)
  {
    return GetReverse.getCooperService(paramContext).getAppVersionName(paramContext);
  }
  
  public static int d(Context paramContext)
  {
    return GetReverse.getCooperService(paramContext).getAppVersionCode(paramContext);
  }
  
  public static String e(Context paramContext)
  {
    if (o(paramContext))
    {
      paramContext = Build.VERSION.RELEASE;
      n.a("android_osVersion : " + paramContext);
      return paramContext;
    }
    n.c("android OsVerson get failed");
    return "";
  }
  
  public static String f(Context paramContext)
  {
    return "Android" + GetReverse.getCooperService(paramContext).getOSVersion();
  }
  
  public static String g(Context paramContext)
  {
    if (o(paramContext))
    {
      paramContext = Build.MANUFACTURER;
      n.a("manufacturer_info : " + paramContext);
      return paramContext;
    }
    n.c("android manufacturer get failed!");
    return "";
  }
  
  public static String h(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    return GetReverse.getCooperService(paramContext).getDeviceId(localTelephonyManager, paramContext);
  }
  
  public static String i(Context paramContext)
  {
    String str2 = "";
    String str1 = str2;
    try
    {
      if (c.f(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        str1 = str2;
        str2 = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        str1 = str2;
        return GetReverse.getCooperService(paramContext).getSecretValue(str2);
      }
      str1 = str2;
      e.c("You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE");
      return "";
    }
    catch (Exception paramContext) {}
    return str1;
  }
  
  public static String j(Context paramContext)
  {
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      String str = "";
      if (o(paramContext))
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        str = paramContext.getPhoneType() + "";
      }
      if (str.length() != 0)
      {
        n.a("phoneType : " + str);
        return str;
      }
      n.b("phoneType get nothing");
      return "";
    }
    n.c("lost permissioin : android.permission.READ_PHONE_STATE");
    return "";
  }
  
  public static String k(Context paramContext)
  {
    return GetReverse.getCooperService(paramContext).getCUID(paramContext, true);
  }
  
  public static String l(Context paramContext)
  {
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      String str = "";
      if (o(paramContext)) {
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      }
      if (str != null)
      {
        n.a("Imei:" + str);
        return GetReverse.getCooperService(paramContext).getSecretValue(str);
      }
      n.b("Imei is null");
      return "";
    }
    n.c("lost permissioin : android.permission.READ_PHONE_STATE");
    return "";
  }
  
  public static NetworkStatus m(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null) {
      return NetworkStatus.NotReachable;
    }
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable())) {
      return NetworkStatus.NotReachable;
    }
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (localConnectivityManager.getActiveNetworkInfo().getType() == 1) {
      return NetworkStatus.Wifi;
    }
    switch (paramContext.getNetworkType())
    {
    case 8: 
    case 9: 
    case 10: 
    default: 
      return NetworkStatus.TwoG;
    case 7: 
      return NetworkStatus.TwoG;
    case 4: 
      return NetworkStatus.TwoG;
    case 2: 
      return NetworkStatus.TwoG;
    case 5: 
      return NetworkStatus.ThreeG;
    case 6: 
      return NetworkStatus.ThreeG;
    case 1: 
      return NetworkStatus.TwoG;
    case 3: 
      return NetworkStatus.ThreeG;
    case 14: 
      return NetworkStatus.ThreeG;
    case 12: 
      return NetworkStatus.ThreeG;
    case 15: 
      return NetworkStatus.ThreeG;
    case 11: 
      return NetworkStatus.TwoG;
    case 13: 
      return NetworkStatus.ThreeG;
    }
    return NetworkStatus.TwoG;
  }
  
  public static String n(Context paramContext)
  {
    int k = Build.VERSION.SDK_INT;
    Object localObject = new DisplayMetrics();
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    paramContext.getMetrics((DisplayMetrics)localObject);
    int i = widthPixels;
    int j = heightPixels;
    n.a("Run1 first get resolution:" + i + " * " + j + ",ver " + k);
    if (k < 13)
    {
      k = heightPixels;
      j = i;
      i = k;
    }
    for (;;)
    {
      n.a("Run2 Calibration resolution:" + j + " * " + i);
      return j + "*" + i;
      if (k == 13)
      {
        try
        {
          k = ((Integer)paramContext.getClass().getMethod("getRealHeight", new Class[0]).invoke(paramContext, new Object[0])).intValue();
          j = k;
          k = i;
          i = j;
          j = k;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          k = i;
          i = j;
          j = k;
        }
      }
      else if (k > 13)
      {
        k = i;
        try
        {
          localObject = paramContext.getClass().getMethod("getSize", new Class[] { Point.class });
          k = i;
          Point localPoint = new Point();
          k = i;
          ((Method)localObject).invoke(paramContext, new Object[] { localPoint });
          k = i;
          i = x;
          k = i;
          m = y;
        }
        catch (Exception paramContext)
        {
          try
          {
            n.a("ver>13 resolution : " + i + " * " + m);
            j = i;
            i = m;
          }
          catch (Exception paramContext)
          {
            for (;;)
            {
              int m;
              j = i;
              i = m;
            }
          }
          paramContext = paramContext;
          i = j;
          j = k;
        }
        paramContext.printStackTrace();
      }
      else
      {
        k = i;
        i = j;
        j = k;
      }
    }
  }
  
  public static boolean o(Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) == 0;
  }
  
  public static boolean p(Context paramContext)
  {
    if (a(paramContext, "android.permission.INTERNET"))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isAvailable())) {
        return true;
      }
      n.c("Network error");
      return false;
    }
    n.c(" lost  permission : android.permission.INTERNET");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */