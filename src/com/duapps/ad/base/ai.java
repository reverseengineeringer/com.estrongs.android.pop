package com.duapps.ad.base;

import com.duapps.ad.entity.AdModel;
import com.duapps.ad.stats.b;
import java.util.Collection;
import java.util.List;

class ai
  implements am<AdModel>
{
  ai(ah paramah) {}
  
  public void a()
  {
    l.a(ah.e(), "start load cache data--");
    a.c = true;
    a.e = true;
  }
  
  public void a(int paramInt, AdModel arg2)
  {
    a.c = false;
    if ((paramInt != 200) || (??? == null)) {
      return;
    }
    List localList = m.a(ah.a(a), ah.a(a, h));
    synchronized (ah.b(a))
    {
      if (localList.size() <= 0)
      {
        b.c(ah.c(a), ah.d(a));
        return;
      }
    }
    ah.b(a).addAll(localCollection);
    l.a(ah.e(), "store data into cache list -- list.size = " + ah.b(a).size());
  }
  
  public void a(int paramInt, String paramString)
  {
    l.a(ah.e(), "fail to get cache -" + paramString);
    a.b = true;
    a.c = false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */