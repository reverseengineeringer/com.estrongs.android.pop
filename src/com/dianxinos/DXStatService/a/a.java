package com.dianxinos.DXStatService.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

public class a
{
  public static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i < 4)
      {
        Object localObject = String.format("/system/bin/cat /sys/block/mmcblk%d/device/cid", new Object[] { Integer.valueOf(i) });
        try
        {
          localObject = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String)localObject).getInputStream()));
          for (;;)
          {
            String str = ((BufferedReader)localObject).readLine();
            if ((str == null) || (str.length() <= 0)) {
              break;
            }
            localStringBuilder.append(str).append(" ");
          }
        }
        catch (Exception localException)
        {
          i += 1;
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Context paramContext)
  {
    return paramContext.getApplicationContext().getPackageName();
  }
  
  private static String a(PackageInfo paramPackageInfo)
  {
    int i = 0;
    if (paramPackageInfo == null) {}
    do
    {
      return null;
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(signatures[0].toCharsString().getBytes());
        paramPackageInfo = ((MessageDigest)localObject).digest();
        localObject = new char[16];
        Object tmp41_40 = localObject;
        tmp41_40[0] = 48;
        Object tmp46_41 = tmp41_40;
        tmp46_41[1] = 49;
        Object tmp51_46 = tmp46_41;
        tmp51_46[2] = 50;
        Object tmp56_51 = tmp51_46;
        tmp56_51[3] = 51;
        Object tmp61_56 = tmp56_51;
        tmp61_56[4] = 52;
        Object tmp66_61 = tmp61_56;
        tmp66_61[5] = 53;
        Object tmp71_66 = tmp66_61;
        tmp71_66[6] = 54;
        Object tmp77_71 = tmp71_66;
        tmp77_71[7] = 55;
        Object tmp83_77 = tmp77_71;
        tmp83_77[8] = 56;
        Object tmp89_83 = tmp83_77;
        tmp89_83[9] = 57;
        Object tmp95_89 = tmp89_83;
        tmp95_89[10] = 97;
        Object tmp101_95 = tmp95_89;
        tmp101_95[11] = 98;
        Object tmp107_101 = tmp101_95;
        tmp107_101[12] = 99;
        Object tmp113_107 = tmp107_101;
        tmp113_107[13] = 100;
        Object tmp119_113 = tmp113_107;
        tmp119_113[14] = 101;
        Object tmp125_119 = tmp119_113;
        tmp125_119[15] = 102;
        tmp125_119;
        StringBuilder localStringBuilder = new StringBuilder(paramPackageInfo.length * 2);
        while (i < paramPackageInfo.length)
        {
          localStringBuilder.append(localObject[((paramPackageInfo[i] & 0xF0) >>> 4)]);
          localStringBuilder.append(localObject[(paramPackageInfo[i] & 0xF)]);
          i += 1;
        }
        paramPackageInfo = localStringBuilder.toString();
        return paramPackageInfo;
      }
      catch (NoSuchAlgorithmException paramPackageInfo) {}
    } while (!b.b);
    Log.e("BaseInfoHelper", "Failed to getMD5!", paramPackageInfo);
    return null;
  }
  
  private static String a(String paramString)
  {
    long l3 = 0L;
    int k = 8;
    if ((paramString == null) || (paramString.length() < 32)) {
      return "-1";
    }
    paramString = paramString.substring(8, 24);
    int i = 0;
    long l1 = 0L;
    int j;
    long l2;
    for (;;)
    {
      j = k;
      l2 = l3;
      if (i >= 8) {
        break;
      }
      l1 = l1 * 16L + Integer.parseInt(paramString.substring(i, i + 1), 16);
      i += 1;
    }
    while (j < paramString.length())
    {
      l2 = l2 * 16L + Integer.parseInt(paramString.substring(j, j + 1), 16);
      j += 1;
    }
    return String.valueOf(l1 + l2 & 0xFFFFFFFF);
  }
  
  public static String b()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("/system/bin/cat /proc/meminfo").getInputStream()));
      String str;
      boolean bool;
      do
      {
        str = localBufferedReader.readLine();
        if ((str == null) || (str.length() <= 0)) {
          break;
        }
        bool = str.startsWith("MemFree:");
      } while (!bool);
      return str;
    }
    catch (Exception localException)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the Mem info.", localException);
      }
    }
    return "unknown";
  }
  
  public static String b(Context paramContext)
  {
    try
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the wifiMac info.", paramContext);
      }
      return "";
    }
    return null;
  }
  
  public static String c()
  {
    try
    {
      String str = Build.FINGERPRINT;
      return str;
    }
    catch (Exception localException)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the fingerPrint info.", localException);
      }
    }
    return "";
  }
  
  public static String c(Context paramContext)
  {
    try
    {
      paramContext = b.a("ro.serialno");
      if (!TextUtils.isEmpty(paramContext)) {
        return paramContext;
      }
      paramContext = b.a("ro.hw.dxos.SN");
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the sn info.", paramContext);
      }
    }
    return "";
  }
  
  public static String d(Context paramContext)
  {
    try
    {
      paramContext = Build.MODEL;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String e(Context paramContext)
  {
    try
    {
      paramContext = new StatFs(Environment.getDataDirectory().getPath());
      long l = paramContext.getBlockSize();
      paramContext = Long.toString(paramContext.getBlockCount() * l);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramContext.getMetrics(localDisplayMetrics);
      if (widthPixels < heightPixels) {
        return widthPixels + "*" + heightPixels;
      }
      paramContext = heightPixels + "*" + widthPixels;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String g(Context paramContext)
  {
    try
    {
      paramContext = u(paramContext);
      if (paramContext != null)
      {
        int i = heightPixels;
        return String.valueOf(i);
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get height info!", paramContext);
      }
    }
    return "";
  }
  
  public static String h(Context paramContext)
  {
    try
    {
      paramContext = u(paramContext);
      if (paramContext != null)
      {
        int i = widthPixels;
        return String.valueOf(i);
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get width info!", paramContext);
      }
    }
    return "";
  }
  
  public static String i(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageName();
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 0);
      if (paramContext != null)
      {
        paramContext = versionName;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get PkgVersionName!", paramContext);
      }
    }
    return "";
  }
  
  public static int j(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageName();
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 0);
      if (paramContext != null)
      {
        int i = versionCode;
        return i;
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get PkgVersionCode!", paramContext);
      }
    }
    return -1;
  }
  
  public static String k(Context paramContext)
  {
    try
    {
      paramContext = Build.MANUFACTURER;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String l(Context paramContext)
  {
    try
    {
      paramContext = Build.MODEL;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "failed to get the model info.", paramContext);
      }
    }
    return "";
  }
  
  public static String m(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String n(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the IMSI info!", paramContext);
      }
    }
    return "";
  }
  
  public static String o(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the hw info.", paramContext);
      }
    }
    return "";
  }
  
  public static String p(Context paramContext)
  {
    try
    {
      int i = Build.VERSION.SDK_INT;
      return String.valueOf(i);
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the androidVersion info.", paramContext);
      }
    }
    return "";
  }
  
  public static String q(Context paramContext)
  {
    try
    {
      paramContext = u(paramContext);
      if (paramContext != null)
      {
        paramContext = Integer.toString(densityDpi);
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the dpi info.", paramContext);
      }
    }
    return "";
  }
  
  public static String r(Context paramContext)
  {
    try
    {
      paramContext = getResourcesgetConfigurationlocale.toString();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "failed to getLocale Info!", paramContext);
      }
    }
    return "";
  }
  
  public static String s(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        String str = localNetworkInfo.getTypeName();
        paramContext = str;
        if ("mobile".equals(str.toLowerCase())) {
          paramContext = localNetworkInfo.getSubtypeName();
        }
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get the netWorkType info.", paramContext);
      }
    }
    return "none";
  }
  
  public static String t(Context paramContext)
  {
    try
    {
      String str = getApplicationInfopackageName;
      paramContext = a(a(paramContext.getPackageManager().getPackageInfo(str, 64)));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to get signature!", paramContext);
      }
    }
    return null;
  }
  
  private static DisplayMetrics u(Context paramContext)
  {
    try
    {
      paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramContext.getMetrics(localDisplayMetrics);
      return localDisplayMetrics;
    }
    catch (Exception paramContext)
    {
      if (b.b) {
        Log.e("BaseInfoHelper", "Failed to getMetrics!", paramContext);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */