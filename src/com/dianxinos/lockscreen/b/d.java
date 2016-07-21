package com.dianxinos.lockscreen.b;

import android.os.Handler;
import com.dianxinos.lockscreen.a;
import com.dianxinos.lockscreen.c.g;

class d
  implements Runnable
{
  d(c paramc, a parama) {}
  
  public void run()
  {
    if ((c.a(b)) && (c.b(b) != null) && (c.c(b) != null))
    {
      g.a("LockScreenPullScheduler", "pull");
      c.b(b).a();
      a.b(System.currentTimeMillis());
      c.c(b).postDelayed(this, 21600000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */