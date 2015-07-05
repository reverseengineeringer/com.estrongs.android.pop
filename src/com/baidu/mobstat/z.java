package com.baidu.mobstat;

import com.baidu.mobstat.util.e;
import java.util.HashMap;

class z
  implements Runnable
{
  z(x paramx, long paramLong, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (!af.a().c()) {}
    synchronized (af.a())
    {
      try
      {
        af.a().wait();
        ??? = new ac(d);
        c = a;
        a = b;
        b = c;
        String str = d.a(b, c);
        if (d.a.get(str) != null) {
          e.b(new Object[] { "sdkstat", "EventStat: event_id[" + b + "] with label[" + c + "] is duplicated, older is removed" });
        }
        d.a.put(str, ???);
        e.a("sdkstat", "put a keyword[" + str + "] into durationlist");
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
 * Qualified Name:     com.baidu.mobstat.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */