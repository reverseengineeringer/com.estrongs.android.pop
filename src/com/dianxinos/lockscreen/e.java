package com.dianxinos.lockscreen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.lockscreen.c.g;

class e
  extends BroadcastReceiver
{
  e(c paramc) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (("android.intent.action.SCREEN_ON".equals(paramContext)) || ("android.intent.action.SCREEN_OFF".equals(paramContext)))
    {
      if (g.a) {
        g.a("ChargingManager", "Screen state is changed:" + paramContext);
      }
      c.a(a, paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */