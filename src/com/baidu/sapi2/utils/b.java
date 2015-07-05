package com.baidu.sapi2.utils;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.android.common.security.MD5Util;
import com.baidu.sapi2.c;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;

public class b
{
  public static String a()
  {
    try
    {
      if (TextUtils.isEmpty(Build.VERSION.RELEASE)) {}
      for (String str = "";; str = Build.VERSION.RELEASE) {
        return URLEncoder.encode(str, "UTF-8");
      }
      return "";
    }
    catch (Exception localException) {}
  }
  
  public static void a(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    for (;;)
    {
      try
      {
        FileInputStream localFileInputStream = new FileInputStream("/system/etc/hosts");
        Object localObject = new byte[localFileInputStream.available()];
        localFileInputStream.read((byte[])localObject);
        localObject = new String((byte[])localObject);
        if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((String)localObject).contains("passport.baidu.com")))
        {
          c.a(paramContext).b(true);
          localFileInputStream.close();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        c.a(paramContext).b(false);
        L.e(localThrowable);
        return;
      }
      c.a(paramContext).b(false);
    }
  }
  
  public static String b()
  {
    try
    {
      if (TextUtils.isEmpty(Build.BRAND)) {}
      for (String str = "";; str = Build.BRAND) {
        return URLEncoder.encode(str, "UTF-8");
      }
      return "";
    }
    catch (Exception localException) {}
  }
  
  public static String b(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }
  
  public static String c()
  {
    try
    {
      if (TextUtils.isEmpty(Build.MODEL)) {}
      for (String str = "";; str = Build.MODEL) {
        return URLEncoder.encode(str, "UTF-8");
      }
      return "";
    }
    catch (Exception localException) {}
  }
  
  public static String c(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (TextUtils.isEmpty(paramContext.getMacAddress())) {
        return "";
      }
      paramContext = paramContext.getMacAddress();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static String d()
  {
    return "os_version=" + a() + "&brand_name=" + b() + "&brand_model=" + c() + "&os_type=" + "Android";
  }
  
  public static String d(Context paramContext)
  {
    return MD5Util.toMd5((b(paramContext) + c(paramContext)).getBytes(), false).replace("\n", "");
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */