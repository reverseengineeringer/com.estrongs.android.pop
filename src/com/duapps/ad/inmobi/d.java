package com.duapps.ad.inmobi;

import com.duapps.ad.base.am;
import com.duapps.ad.base.l;
import com.duapps.ad.stats.b;
import java.util.Collection;
import java.util.List;

class d
  implements am<IMDataModel>
{
  d(c paramc) {}
  
  public void a()
  {
    l.a("InMobiCacheManager", "start load cache data--");
    a.c = true;
    a.e = true;
  }
  
  public void a(int paramInt, IMDataModel arg2)
  {
    a.c = false;
    if ((paramInt != 200) || (??? == null)) {
      return;
    }
    l.c("InMobiCacheManager", paramInt + "");
    List localList = f;
    synchronized (c.a(a))
    {
      if (localList.size() <= 0)
      {
        b.b(c.b(a), c.c(a));
        return;
      }
    }
    c.a(a).addAll(localCollection);
    l.a("InMobiCacheManager", "store data into cache list -- list.size = " + c.a(a).size());
  }
  
  public void a(int paramInt, String paramString)
  {
    l.a("InMobiCacheManager", "fail to get cache -" + paramString);
    a.b = true;
    a.c = false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */