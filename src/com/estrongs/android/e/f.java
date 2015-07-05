package com.estrongs.android.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class f
  extends BroadcastReceiver
{
  f(e parame) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.net.wifi.WIFI_STATE_CHANGED".equals(paramIntent.getAction())) {
      e.a(a, paramIntent.getIntExtra("wifi_state", 4));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.e.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */