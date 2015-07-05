package com.estrongs.android.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;

class c
  extends BroadcastReceiver
{
  c(b paramb) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (b.a(a) == null) {
      b.a(a, (WifiManager)paramContext.getSystemService("wifi"));
    }
    if (b.b(a) == null) {
      b.a(a, (ConnectivityManager)b.c(a).getSystemService("connectivity"));
    }
    paramContext = paramIntent.getAction();
    try
    {
      String str1 = (String)b.a(a).getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(b.a(a));
      String str2 = (String)b.a(a).getClass().getField("EXTRA_WIFI_AP_STATE").get(b.a(a));
      int i = b.a(a).getClass().getField("WIFI_AP_STATE_FAILED").getInt(b.a(a));
      if (str1.equals(paramContext)) {
        b.a(a, paramIntent.getIntExtra(str2, i));
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
 * Qualified Name:     com.estrongs.android.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */