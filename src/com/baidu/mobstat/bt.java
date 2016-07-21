package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import java.util.Timer;

class bt
  implements Runnable
{
  bt(bs parambs, Context paramContext) {}
  
  public void run()
  {
    if (bs.a(b) != null)
    {
      bs.a(b).cancel();
      bs.a(b, null);
    }
    bs.a(b, SendStrategyEnum.values()[be.a().a(a)]);
    bs.a(b, be.a().b(a));
    bs.a(b, be.a().c(a));
    if (bs.b(b).equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
      b.d(a);
    }
    for (;;)
    {
      bs.d(b).postDelayed(new bu(this), bs.c(b) * 1000);
      return;
      if (bs.b(b).equals(SendStrategyEnum.ONCE_A_DAY)) {
        b.d(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */