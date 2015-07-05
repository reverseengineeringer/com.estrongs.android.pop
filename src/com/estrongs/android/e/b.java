package com.estrongs.android.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class b
{
  private final Context a;
  private WifiManager b;
  private IntentFilter c;
  private SharedPreferences d;
  private ConnectivityManager e;
  private d f = null;
  private final BroadcastReceiver g = new c(this);
  
  public b(Context paramContext, d paramd)
  {
    a = paramContext;
    f = paramd;
    b = ((WifiManager)paramContext.getSystemService("wifi"));
    e = ((ConnectivityManager)a.getSystemService("connectivity"));
    d = a.getSharedPreferences("wifi_setting", 0);
    try
    {
      paramContext = (String)b.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(b);
      paramd = (String)e.getClass().getField("ACTION_TETHER_STATE_CHANGED").get(e);
      c = new IntentFilter(paramContext);
      c.addAction(paramd);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void a(int paramInt)
  {
    int k;
    int m;
    try
    {
      int i = b.getClass().getField("WIFI_AP_STATE_ENABLING").getInt(b);
      int j = b.getClass().getField("WIFI_AP_STATE_ENABLED").getInt(b);
      k = b.getClass().getField("WIFI_AP_STATE_DISABLING").getInt(b);
      m = b.getClass().getField("WIFI_AP_STATE_DISABLED").getInt(b);
      if (paramInt == i)
      {
        f.a(2);
        return;
      }
      if (paramInt == j)
      {
        f.a(3);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    if (paramInt == k)
    {
      f.a(4);
      return;
    }
    if (paramInt == m)
    {
      f.a(5);
      return;
    }
    f.a(6);
  }
  
  public void a()
  {
    a.registerReceiver(g, c);
  }
  
  public boolean a(boolean paramBoolean, WifiConfiguration paramWifiConfiguration)
  {
    int i = b.getWifiState();
    if ((paramBoolean) && ((i == 2) || (i == 3)))
    {
      b.setWifiEnabled(false);
      SharedPreferences.Editor localEditor = d.edit();
      localEditor.putInt("wifi_saved_state", 1);
      localEditor.commit();
    }
    try
    {
      if (((Boolean)b.getClass().getMethod("setWifiApEnabled", new Class[] { WifiConfiguration.class, Boolean.TYPE }).invoke(b, new Object[] { paramWifiConfiguration, Boolean.valueOf(paramBoolean) })).booleanValue()) {
        f.a(1);
      }
      if ((!paramBoolean) && (d.getInt("wifi_saved_state", -1) == 1))
      {
        b.setWifiEnabled(true);
        paramWifiConfiguration = d.edit();
        paramWifiConfiguration.putInt("wifi_saved_state", 0);
        paramWifiConfiguration.commit();
      }
      return false;
    }
    catch (Exception paramWifiConfiguration)
    {
      for (;;)
      {
        paramWifiConfiguration.printStackTrace();
      }
    }
  }
  
  public void b()
  {
    a.unregisterReceiver(g);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */