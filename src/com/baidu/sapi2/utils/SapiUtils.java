package com.baidu.sapi2.utils;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.baidu.android.common.util.DeviceId;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.b;
import com.baidu.sapi2.c;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;

public class SapiUtils
{
  public static final String KEY_QR_LOGIN_LP = "lp";
  public static final String KEY_QR_LOGIN_SIGN = "sign";
  public static final String QR_LOGIN_LP_APP = "app";
  public static final String QR_LOGIN_LP_PC = "pc";
  static final String a = "cmd";
  static final String b = "error";
  
  public static String createRequestParams(List<NameValuePair> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)paramList.next();
        if ((!TextUtils.isEmpty(localNameValuePair.getName())) && (!TextUtils.isEmpty(localNameValuePair.getValue()))) {
          if (TextUtils.isEmpty(localStringBuilder.toString())) {
            localStringBuilder.append(localNameValuePair.getName()).append("=").append(localNameValuePair.getValue());
          } else {
            localStringBuilder.append("&").append(localNameValuePair.getName()).append("=").append(localNameValuePair.getValue());
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static int dip2px(Context paramContext, float paramFloat)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context can't be null");
    }
    return (int)(getResourcesgetDisplayMetricsdensity * paramFloat + 0.5F);
  }
  
  public static String getAppName(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = getPackageInfogetPackageName0applicationInfo.loadLabel(localPackageManager).toString();
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static List<String> getAuthorizedDomains(Context paramContext)
  {
    if (paramContext == null) {
      return Collections.emptyList();
    }
    return c.a(paramContext).k().h();
  }
  
  public static String getCUID(Context paramContext)
  {
    try
    {
      paramContext = DeviceId.getDeviceID(paramContext) + "|" + TextUtils.getReverse(DeviceId.getIMEI(paramContext), 0, DeviceId.getIMEI(paramContext).length());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext);
    }
    return null;
  }
  
  public static String getClientId(Context paramContext)
  {
    try
    {
      paramContext = DeviceId.getDeviceID(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return "123456789";
  }
  
  public static String getFastRegChannel(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = c.a(paramContext).k().a();
      if (!TextUtils.isEmpty(paramContext)) {
        return paramContext;
      }
    }
    return "10698000036592";
  }
  
  public static String getLocalIpAddress()
  {
    try
    {
      label26:
      Object localObject;
      int i;
      do
      {
        do
        {
          do
          {
            Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
            break label26;
            Enumeration localEnumeration2;
            while (!localEnumeration2.hasMoreElements())
            {
              if (!localEnumeration1.hasMoreElements()) {
                break;
              }
              localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
            }
            localObject = (InetAddress)localEnumeration2.nextElement();
          } while (((InetAddress)localObject).isLoopbackAddress());
          localObject = ((InetAddress)localObject).getHostAddress();
        } while (localObject == null);
        i = ((String)localObject).length();
      } while (i <= 0);
      return (String)localObject;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
    return null;
  }
  
  public static String getVersionName(Context paramContext)
  {
    try
    {
      paramContext = getPackageManagergetPackageInfogetPackageName0versionName;
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext);
    }
    return "0";
  }
  
  public static boolean hasActiveNetwork(Context paramContext)
  {
    if (paramContext == null) {}
    do
    {
      return false;
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    } while (paramContext == null);
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext != null) {}
      for (boolean bool = true;; bool = false) {
        return bool;
      }
      return false;
    }
    catch (Throwable paramContext) {}
  }
  
  public static boolean isQrLoginSchema(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!paramString.contains("error")) || (!paramString.contains("sign")) || (!paramString.contains("cmd")) || (!paramString.contains("lp"))) {
      return false;
    }
    HashMap localHashMap = new HashMap();
    paramString = paramString.split("&");
    int j = paramString.length;
    int i = 0;
    if (i < j)
    {
      String[] arrayOfString = paramString[i].split("=");
      if (arrayOfString.length > 1) {
        localHashMap.put(arrayOfString[0], arrayOfString[1]);
      }
      for (;;)
      {
        i += 1;
        break;
        if (arrayOfString.length == 1) {
          localHashMap.put(arrayOfString[0], "");
        }
      }
    }
    return (!TextUtils.isEmpty((CharSequence)localHashMap.get("error"))) && (!TextUtils.isEmpty((CharSequence)localHashMap.get("sign"))) && (!TextUtils.isEmpty((CharSequence)localHashMap.get("cmd"))) && (!TextUtils.isEmpty((CharSequence)localHashMap.get("lp")));
  }
  
  public static boolean isSimReady(Context paramContext)
  {
    if ((paramContext == null) || (paramContext.checkCallingOrSelfPermission("android.permission.SEND_SMS") != 0)) {
      return false;
    }
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getSimState())
    {
    default: 
      return false;
    case 1: 
      return false;
    case 0: 
      return false;
    case 2: 
    case 3: 
    case 4: 
      return false;
    }
    return true;
  }
  
  public static boolean isValidAccount(SapiAccount paramSapiAccount)
  {
    return (paramSapiAccount != null) && (!TextUtils.isEmpty(bduss)) && (!TextUtils.isEmpty(uid)) && (!TextUtils.isEmpty(displayname));
  }
  
  public static boolean isValidPhoneNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return Pattern.compile("^(1)\\d{10}$").matcher(paramString).matches();
  }
  
  public static boolean isValidUsername(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      bool1 = bool2;
      if (paramString.length() <= 14) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static Map<String, String> parseQrLoginSchema(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (!isQrLoginSchema(paramString)) {
      return localHashMap;
    }
    paramString = paramString.split("&");
    int j = paramString.length;
    int i = 0;
    label29:
    String[] arrayOfString;
    if (i < j)
    {
      arrayOfString = paramString[i].split("=");
      if (arrayOfString.length <= 1) {
        break label73;
      }
      localHashMap.put(arrayOfString[0], arrayOfString[1]);
    }
    for (;;)
    {
      i += 1;
      break label29;
      break;
      label73:
      if (arrayOfString.length == 1) {
        localHashMap.put(arrayOfString[0], "");
      }
    }
  }
  
  public static void resetSilentShareStatus(Context paramContext)
  {
    if (paramContext != null) {
      c.a(paramContext).i();
    }
  }
  
  @TargetApi(4)
  public static boolean sendSms(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return false;
    }
    paramContext = PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
    try
    {
      SmsManager.getDefault().sendTextMessage(paramString2, null, paramString1, paramContext, null);
      return true;
    }
    catch (Throwable paramContext) {}
    return false;
  }
  
  public static boolean webLogin(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    try
    {
      paramString = "BDUSS=" + paramString + ";domain=baidu.com;path=/";
      CookieSyncManager.createInstance(paramContext);
      paramContext = CookieManager.getInstance();
      paramContext.setAcceptCookie(true);
      paramContext.setCookie("http://www.baidu.com", paramString);
      CookieSyncManager.getInstance().sync();
      return true;
    }
    catch (Throwable paramContext) {}
    return false;
  }
  
  public static boolean webLogout(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    try
    {
      CookieSyncManager.createInstance(paramContext);
      paramContext = CookieManager.getInstance();
      paramContext.setAcceptCookie(true);
      paramContext.setCookie("http://www.baidu.com", "BDUSS=;domain=baidu.com;path=/");
      CookieSyncManager.getInstance().sync();
      return true;
    }
    catch (Throwable paramContext) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.SapiUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */