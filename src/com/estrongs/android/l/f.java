package com.estrongs.android.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;

class f
  extends BroadcastReceiver
{
  f(e parame) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (e.a(a) == null) {
      e.a(a, (WifiManager)paramContext.getSystemService("wifi"));
    }
    if (e.b(a) == null) {
      e.a(a, (ConnectivityManager)e.c(a).getSystemService("connectivity"));
    }
    paramContext = paramIntent.getAction();
    try
    {
      String str1 = (String)e.a(a).getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(e.a(a));
      String str2 = (String)e.a(a).getClass().getField("EXTRA_WIFI_AP_STATE").get(e.a(a));
      int i = e.a(a).getClass().getField("WIFI_AP_STATE_FAILED").getInt(e.a(a));
      if (str1.equals(paramContext)) {
        e.a(a, paramIntent.getIntExtra(str2, i));
      }
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */