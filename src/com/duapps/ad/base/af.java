package com.duapps.ad.base;

import com.duapps.ad.entity.AdModel;
import com.duapps.ad.stats.b;
import java.util.List;

class af
  implements am<AdModel>
{
  af(ae paramae) {}
  
  public void a()
  {
    l.a(ae.e(), "start load cache data--");
    a.c = true;
    a.e = true;
  }
  
  public void a(int paramInt, AdModel arg2)
  {
    int i = 0;
    a.c = false;
    if ((paramInt != 200) || (??? == null)) {
      return;
    }
    List localList = m.a(ae.a(a), ae.a(a, h));
    synchronized (ae.b(a))
    {
      if (localList.size() <= 0)
      {
        b.a(ae.c(a), ae.d(a));
        return;
      }
    }
    ae.b(a).clear();
    paramInt = i;
    while ((paramInt < ((List)localObject).size()) && (paramInt < 5))
    {
      ae.b(a).add(((List)localObject).get(paramInt));
      paramInt += 1;
    }
    l.a(ae.e(), "store data into cache list -- list.size = " + ae.b(a).size());
  }
  
  public void a(int paramInt, String paramString)
  {
    l.a(ae.e(), "fail to get cache -" + paramString);
    a.b = true;
    a.c = false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */