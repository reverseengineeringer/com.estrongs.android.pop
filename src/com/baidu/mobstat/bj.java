package com.baidu.mobstat;

import java.util.HashMap;

class bj
  implements Runnable
{
  bj(bh parambh, long paramLong, String paramString1, String paramString2) {}
  
  public void run()
  {
    bp.a().c();
    bm localbm = new bm();
    c = a;
    a = b;
    b = c;
    String str = d.a(b, c);
    if (d.a.get(str) != null) {
      cr.b("EventStat: event_id[" + b + "] with label[" + c + "] is duplicated, older is removed");
    }
    d.a.put(str, localbm);
    cr.a("put a keyword[" + str + "] into durationlist");
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */