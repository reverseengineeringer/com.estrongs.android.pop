package com.dianxinos.lockscreen.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class b
  extends BroadcastReceiver
{
  b(a parama) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a.b()) {
      g.a("BatteryInfoTracker", "Received: " + paramIntent.getAction());
    }
    a.a(a, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */