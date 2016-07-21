package com.dianxinos.lockscreen.ad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.lockscreen.c.f;
import com.dianxinos.lockscreen.c.g;

public class LockPresentReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (f.a <= 0)
    {
      if (g.a) {
        g.c("LockPresentReceiver", "sid is below 0");
      }
      return;
    }
    if (g.a) {
      g.a("LockPresentReceiver", "present on receive , need call back !");
    }
    c.a(paramContext).b();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.LockPresentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */