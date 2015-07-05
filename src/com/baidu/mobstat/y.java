package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;

class y
  implements Runnable
{
  y(x paramx, String paramString1, String paramString2, int paramInt, long paramLong, Context paramContext) {}
  
  public void run()
  {
    if (!af.a().c()) {}
    synchronized (af.a())
    {
      try
      {
        af.a().wait();
        DataCore.getInstance().putEvent(a, b, c, d, 0L);
        DataCore.getInstance().flush(e);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          e.a("sdkstat", localInterruptedException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */