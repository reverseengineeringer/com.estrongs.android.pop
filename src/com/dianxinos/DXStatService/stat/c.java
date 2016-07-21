package com.dianxinos.DXStatService.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.provider.Settings.System;

class c
  extends BroadcastReceiver
{
  c(b paramb) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    long l2 = 1L;
    paramContext = b.a(a).getContentResolver();
    long l3 = SystemClock.elapsedRealtime() / 60000L;
    long l4 = Settings.System.getLong(paramContext, b.b(a), -1L);
    long l1 = l2;
    if (l4 != -1L)
    {
      l1 = l3 - l4;
      if (l1 >= 1L) {
        break label120;
      }
      l1 = l2;
    }
    label120:
    for (;;)
    {
      Settings.System.putLong(paramContext, b.b(a), l3);
      l2 = Settings.System.getLong(paramContext, b.c(a), -1L);
      if (l2 > 0L) {
        Settings.System.putLong(paramContext, b.c(a), l2 - l1);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.stat.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */