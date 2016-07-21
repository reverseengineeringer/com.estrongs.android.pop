package com.estrongs.android.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import com.estrongs.android.l.b;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.z;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

public class an
{
  public static String a()
  {
    Object localObject = FexApplication.a();
    if (b())
    {
      localObject = ((WifiManager)((Context)localObject).getSystemService("wifi")).getConnectionInfo();
      if ((localObject == null) || (((WifiInfo)localObject).getIpAddress() == 0)) {
        return e();
      }
      int i = ((WifiInfo)localObject).getIpAddress();
      return (i & 0xFF) + "." + (i >> 8 & 0xFF) + "." + (i >> 16 & 0xFF) + "." + (i >> 24 & 0xFF);
    }
    return e();
  }
  
  @TargetApi(19)
  public static void a(InetAddress paramInetAddress, boolean paramBoolean)
  {
    Object localObject = FexApplication.a();
    if (!z.ah) {}
    for (;;)
    {
      return;
      try
      {
        if (ac.a() >= 19)
        {
          localObject = (WifiManager)((Context)localObject).getSystemService("wifi");
          if (localObject != null)
          {
            ao.a(localObject).a("setTdlsEnabled", new Class[] { InetAddress.class, Boolean.TYPE }, new Object[] { paramInetAddress, Boolean.valueOf(paramBoolean) });
            return;
          }
        }
      }
      catch (Exception paramInetAddress)
      {
        paramInetAddress.printStackTrace();
      }
    }
  }
  
  public static boolean b()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && ((localNetworkInfo.getType() == 1) || (localNetworkInfo.getType() == 9))) {
      return true;
    }
    return b.b();
  }
  
  public static String c()
  {
    Object localObject = FexApplication.a();
    if (b())
    {
      localObject = ((WifiManager)((Context)localObject).getSystemService("wifi")).getConnectionInfo();
      if (localObject != null)
      {
        if (((WifiInfo)localObject).getBSSID() != null) {
          return ((WifiInfo)localObject).getBSSID();
        }
        if (((WifiInfo)localObject).getMacAddress() != null) {
          return ((WifiInfo)localObject).getMacAddress();
        }
      }
      return "com.estrongs.bssid.key";
    }
    return null;
  }
  
  public static boolean d()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  @SuppressLint({"NewApi"})
  private static String e()
  {
    int i = Build.VERSION.SDK_INT;
    try
    {
      Object localObject3;
      do
      {
        localObject1 = NetworkInterface.getNetworkInterfaces();
        Object localObject2;
        while (!((Enumeration)localObject2).hasMoreElements())
        {
          do
          {
            if (!((Enumeration)localObject1).hasMoreElements()) {
              break;
            }
            localObject2 = (NetworkInterface)((Enumeration)localObject1).nextElement();
            localObject3 = ((NetworkInterface)localObject2).getName().toUpperCase();
          } while ((((String)localObject3).equalsIgnoreCase("lo")) || (((String)localObject3).startsWith("RMNET")) || (((String)localObject3).startsWith("PPP")) || ((i >= 9) && ((((NetworkInterface)localObject2).getHardwareAddress() == null) || (!((NetworkInterface)localObject2).isUp()))));
          localObject2 = ((NetworkInterface)localObject2).getInetAddresses();
        }
        localObject3 = (InetAddress)((Enumeration)localObject2).nextElement();
      } while ((((InetAddress)localObject3).isLoopbackAddress()) || (!(localObject3 instanceof Inet4Address)));
      Object localObject1 = ((InetAddress)localObject3).getAddress();
      localObject1 = (localObject1[0] & 0xFF) + "." + (localObject1[1] & 0xFF) + "." + (localObject1[2] & 0xFF) + "." + (localObject1[3] & 0xFF);
      return (String)localObject1;
    }
    catch (Exception localException)
    {
      l.e("WifiPreference IpAddress", localException.toString());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */