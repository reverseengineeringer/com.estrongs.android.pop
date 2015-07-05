package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;
import java.util.HashMap;

class aa
  implements Runnable
{
  aa(x paramx, String paramString1, String paramString2, long paramLong, Context paramContext) {}
  
  public void run()
  {
    if (!af.a().c()) {}
    synchronized (af.a())
    {
      try
      {
        af.a().wait();
        ??? = e.a(a, b);
        ac localac = (ac)e.a.get(???);
        if (localac == null)
        {
          e.b(new Object[] { "sdkstat", "EventStat: event_id[" + a + "] with label[" + b + "] is not started or alread done." });
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
    if ((!a.equals(a)) || (!b.equals(b)))
    {
      e.a("sdkstat", "EventStat: Wrong Case, eventId/label pair not match");
      return;
    }
    e.a.remove(???);
    long l = c - c;
    if (l <= 0L)
    {
      e.a("sdkstat", "EventStat: Wrong Case, Duration must be positive");
      return;
    }
    DataCore.getInstance().putEvent(a, b, 1, c, l);
    DataCore.getInstance().flush(d);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */