package com.estrongs.android.pop.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.estrongs.android.pop.FexApplication;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class cg
{
  public static int a = -1;
  public static String b = null;
  
  private static String a(InputStream paramInputStream)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localStringBuffer.append(new String(arrayOfByte, 0, i));
    }
    return localStringBuffer.toString();
  }
  
  public static boolean a()
  {
    b = ch.a(FexApplication.a());
    if ((b != null) && (b.length() != 0)) {
      return true;
    }
    if (((WifiManager)FexApplication.a().getSystemService("wifi")).isWifiEnabled()) {
      return false;
    }
    Object localObject = ((ConnectivityManager)FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo();
    if (localObject == null) {
      return false;
    }
    localObject = ((NetworkInfo)localObject).getExtraInfo();
    if (a == -1) {
      d();
    }
    return (localObject != null) && (((String)localObject).toLowerCase().contains("wap")) && (a == 2);
  }
  
  public static String b()
  {
    if ((b != null) && (b.length() != 0)) {
      return b;
    }
    if (((WifiManager)FexApplication.a().getSystemService("wifi")).isWifiEnabled()) {
      return null;
    }
    Object localObject = ((ConnectivityManager)FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo();
    if (localObject == null) {
      return null;
    }
    localObject = ((NetworkInfo)localObject).getExtraInfo();
    if (a == -1) {
      d();
    }
    if ((localObject != null) && (((String)localObject).toLowerCase().contains("wap")) && (a == 2)) {
      return e();
    }
    return null;
  }
  
  public static String c()
  {
    return b;
  }
  
  private static void d()
  {
    String str = ((TelephonyManager)FexApplication.a().getSystemService("phone")).getSubscriberId();
    if (str == null) {}
    do
    {
      return;
      if ((str.startsWith("46000")) || (str.startsWith("46002")))
      {
        a = 1;
        return;
      }
      if (str.startsWith("46001"))
      {
        a = 2;
        return;
      }
    } while (!str.startsWith("46003"));
    a = 3;
  }
  
  private static String e()
  {
    try
    {
      Object localObject = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.172", 80));
      localObject = (HttpURLConnection)new URL("http://v.17186.cn/test.jsp").openConnection((Proxy)localObject);
      if (localObject == null) {
        throw new IOException("URLConnection instance is null");
      }
      ((HttpURLConnection)localObject).setConnectTimeout(5000);
      ((HttpURLConnection)localObject).setDoOutput(true);
      ((HttpURLConnection)localObject).setUseCaches(false);
      ((HttpURLConnection)localObject).setRequestMethod("GET");
      ((HttpURLConnection)localObject).setRequestProperty("Accept", "*/*");
      ((HttpURLConnection)localObject).setRequestProperty("Connection", "Keep-Alive");
      ((HttpURLConnection)localObject).setRequestProperty("Charset", "UTF-8");
      ((HttpURLConnection)localObject).setRequestProperty("Content-Type", "text/xml; charset=UTF-8");
      if (((HttpURLConnection)localObject).getResponseCode() == 200)
      {
        localObject = a(((HttpURLConnection)localObject).getInputStream());
        String str2 = ((String)localObject).substring(((String)localObject).indexOf("<body>")).substring(7, 24).trim().substring(2);
        localObject = str2;
        if (Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(str2).matches())
        {
          b = str2;
          return str2;
        }
      }
      else
      {
        return null;
      }
    }
    catch (Exception localException)
    {
      String str1 = null;
      return str1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */