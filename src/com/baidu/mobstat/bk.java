package com.baidu.mobstat;

import android.content.Context;
import java.util.HashMap;

class bk
  implements Runnable
{
  bk(bh parambh, String paramString1, String paramString2, long paramLong, Context paramContext) {}
  
  public void run()
  {
    bp.a().c();
    String str = e.a(a, b);
    bm localbm = (bm)e.a.get(str);
    if (localbm == null)
    {
      cr.b("EventStat: event_id[" + a + "] with label[" + b + "] is not started or alread done.");
      return;
    }
    if ((!a.equals(a)) || (!b.equals(b)))
    {
      cr.a("EventStat: Wrong Case, eventId/label pair not match");
      return;
    }
    e.a.remove(str);
    long l = c - c;
    if (l <= 0L)
    {
      cr.a("EventStat: Wrong Case, Duration must be positive");
      return;
    }
    e.a(d, a, b, 1, c, l);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */