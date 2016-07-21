package com.dianxinos.dxservice.stat;

import android.content.Intent;
import android.util.Log;
import com.dianxinos.dxservice.a.c;

class ak
  implements Runnable
{
  final Intent a;
  
  public ak(af paramaf, Intent paramIntent)
  {
    a = paramIntent;
  }
  
  public void run()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "enter in HandleWifiStateChange!\nAction received: " + a.getAction());
    }
    if ("android.net.wifi.WIFI_STATE_CHANGED".equals(a.getAction())) {
      af.f(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */