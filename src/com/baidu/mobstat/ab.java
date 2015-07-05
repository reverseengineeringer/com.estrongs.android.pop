package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;

class ab
  implements Runnable
{
  ab(x paramx, long paramLong, String paramString1, String paramString2, Context paramContext) {}
  
  public void run()
  {
    if (!af.a().c()) {}
    synchronized (af.a())
    {
      try
      {
        af.a().wait();
        if (a <= 0L)
        {
          e.a("sdkstat", "EventStat: Wrong Case, Duration must be positive");
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          e.a("sdkstat", localInterruptedException);
        }
      }
    }
    DataCore.getInstance().putEvent(b, c, 1, System.currentTimeMillis(), a);
    DataCore.getInstance().flush(d);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */