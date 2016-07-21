package com.duapps.ad.base;

import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.stats.p;
import java.util.Iterator;
import java.util.List;

class ac
  implements Runnable
{
  ac(t paramt, AdModel paramAdModel) {}
  
  public void run()
  {
    if ((a == null) || (a.h == null) || (a.h.size() == 0)) {
      l.c("ToolboxCacheManager", "ads == null || ads.list == null || ads.list.size() == 0");
    }
    for (;;)
    {
      return;
      b.b();
      try
      {
        Iterator localIterator = a.h.iterator();
        while (localIterator.hasNext())
        {
          AdData localAdData = (AdData)localIterator.next();
          l.c("ToolboxCacheManager", "wall---before insert: ad.package: " + c + ",ad.preParse:" + G);
          if (G == 1) {
            b.b(new p(localAdData));
          }
        }
        if (!l.a()) {}
      }
      catch (Exception localException) {}
    }
    l.a("ToolboxCacheManager", "wall---batch update or insert triggerPreParse data error: ", localException);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */