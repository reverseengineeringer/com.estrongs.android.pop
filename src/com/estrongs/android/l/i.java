package com.estrongs.android.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class i
  extends BroadcastReceiver
{
  i(h paramh) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.net.wifi.WIFI_STATE_CHANGED".equals(paramIntent.getAction())) {
      h.a(a, paramIntent.getIntExtra("wifi_state", 4));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */