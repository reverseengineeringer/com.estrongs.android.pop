package com.dianxinos.dxservice.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class AlarmReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (com.dianxinos.dxservice.a.c.d) {
      Log.i("stat.AlarmReceiver", "Alarm trigger, and next alarm will trigger in 30mins!");
    }
    if (aa.a(paramContext)) {
      com.dianxinos.dxservice.core.c.a(paramContext).a(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.AlarmReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */