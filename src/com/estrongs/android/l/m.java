package com.estrongs.android.l;

import android.content.Context;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

public class m
{
  boolean a = false;
  private ScanResult b = null;
  private WifiInfo c = null;
  private NetworkInfo.DetailedState d = null;
  private Context e;
  
  public m(Context paramContext, k paramk, ScanResult paramScanResult)
  {
    b = paramScanResult;
    e = paramContext;
  }
  
  public static String a(String paramString)
  {
    return "\"" + paramString + "\"";
  }
  
  public String a()
  {
    return b.SSID;
  }
  
  public void a(WifiInfo paramWifiInfo, NetworkInfo.DetailedState paramDetailedState)
  {
    if ((b.SSID != null) && (b.SSID.equals(paramWifiInfo.getSSID())))
    {
      c = paramWifiInfo;
      if (paramDetailedState != null) {
        d = paramDetailedState;
      }
    }
    while ((paramDetailedState != NetworkInfo.DetailedState.CONNECTING) && (paramDetailedState != NetworkInfo.DetailedState.OBTAINING_IPADDR) && (paramDetailedState != NetworkInfo.DetailedState.CONNECTED) && (paramDetailedState != NetworkInfo.DetailedState.AUTHENTICATING) && (paramDetailedState != NetworkInfo.DetailedState.DISCONNECTED)) {
      return;
    }
    c = null;
    d = null;
  }
  
  public boolean a(ScanResult paramScanResult)
  {
    if ((b.SSID != null) && (b.SSID.equals(SSID)))
    {
      b = paramScanResult;
      return true;
    }
    return false;
  }
  
  public String[] b()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = k.a(b.SSID);
    if (d == null) {
      arrayOfString[1] = null;
    }
    do
    {
      return arrayOfString;
      if (d == NetworkInfo.DetailedState.CONNECTED)
      {
        arrayOfString[1] = e.getString(2131232169);
        return arrayOfString;
      }
      if (d == NetworkInfo.DetailedState.CONNECTING)
      {
        arrayOfString[1] = e.getString(2131232170);
        return arrayOfString;
      }
      if (d == NetworkInfo.DetailedState.OBTAINING_IPADDR)
      {
        arrayOfString[1] = e.getString(2131232181);
        return arrayOfString;
      }
      if (d == NetworkInfo.DetailedState.SCANNING)
      {
        arrayOfString[1] = e.getString(2131232190);
        return arrayOfString;
      }
    } while (d != NetworkInfo.DetailedState.AUTHENTICATING);
    arrayOfString[1] = e.getString(2131232201);
    return arrayOfString;
  }
  
  public int c()
  {
    if (b.capabilities.contains("WEP")) {
      return 1;
    }
    if (b.capabilities.contains("PSK")) {
      return 2;
    }
    if (b.capabilities.contains("EAP")) {
      return 3;
    }
    return 0;
  }
  
  public NetworkInfo.DetailedState d()
  {
    return d;
  }
  
  public int e()
  {
    if (c != null) {
      return WifiManager.calculateSignalLevel(c.getRssi(), 4);
    }
    return WifiManager.calculateSignalLevel(b.level, 4);
  }
  
  public WifiInfo f()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */