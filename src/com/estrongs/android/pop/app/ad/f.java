package com.estrongs.android.pop.app.ad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class f
  extends BroadcastReceiver
{
  f(a parama) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = false;
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      int i = paramIntent.getIntExtra("plugged", 0);
      paramContext = a;
      if ((i == 1) || (i == 2)) {
        bool = true;
      }
      b = bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */