package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import java.util.Timer;

class ah
  implements Runnable
{
  ah(ag paramag, Context paramContext, String paramString) {}
  
  public void run()
  {
    ag.a(c, r.a().a(a));
    if (ag.a(c)) {
      ad.a().b(a);
    }
    if (ag.b(c) != null)
    {
      ag.b(c).cancel();
      ag.a(c, null);
    }
    ag.a(c, SendStrategyEnum.values()[r.a().b(a)]);
    ag.a(c, r.a().c(a));
    ag.b(c, r.a().d(a));
    if (ag.c(c).equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
      c.a(a, b, "internal");
    }
    for (;;)
    {
      ag.b().postDelayed(new ai(this), ag.e(c) * 1000);
      return;
      if (ag.c(c).equals(SendStrategyEnum.ONCE_A_DAY)) {
        c.a(a, b, "onceaday");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */