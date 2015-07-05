package com.estrongs.android.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;

public class e
{
  private Context a;
  private final WifiManager b;
  private final IntentFilter c;
  private g d = null;
  private final BroadcastReceiver e = new f(this);
  
  public e(Context paramContext, g paramg)
  {
    a = paramContext;
    d = paramg;
    b = ((WifiManager)paramContext.getSystemService("wifi"));
    c = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
    c.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    c.addAction("android.net.wifi.STATE_CHANGE");
  }
  
  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      d.b(6);
      return;
    case 2: 
      d.b(2);
      return;
    case 3: 
      d.b(3);
      return;
    case 0: 
      d.b(4);
      return;
    }
    d.b(5);
  }
  
  public void a()
  {
    a.registerReceiver(e, c);
  }
  
  public boolean a(boolean paramBoolean)
  {
    try
    {
      if (b.setWifiEnabled(paramBoolean)) {
        if (paramBoolean) {
          d.b(1);
        } else {
          d.b(4);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public void b()
  {
    a.unregisterReceiver(e);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.e.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */