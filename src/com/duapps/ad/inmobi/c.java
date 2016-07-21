package com.duapps.ad.inmobi;

import android.content.Context;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.am;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.r;
import com.duapps.ad.base.t;
import com.duapps.ad.entity.a.a;
import com.duapps.ad.stats.b;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class c
  extends a<com.duapps.ad.entity.a.c>
{
  am<IMDataModel> a = new d(this);
  private int i;
  private final List<IMData> j = Collections.synchronizedList(new LinkedList());
  
  public c(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    super(paramContext, paramInt1, paramLong);
    i = paramInt2;
  }
  
  private void a(String paramString, int paramInt)
  {
    t.a(f).a(Integer.valueOf(g).intValue(), paramString, String.valueOf(paramInt), a);
  }
  
  public void a()
  {
    if (!ap.a(f)) {
      com.duapps.ad.base.l.c("InMobiCacheManager", "no net");
    }
    String str;
    int k;
    do
    {
      return;
      if (i == 0)
      {
        com.duapps.ad.base.l.c("InMobiCacheManager", "cacheSize is zero");
        return;
      }
      str = ag.a(f).b();
      com.duapps.ad.base.l.c("InMobiCacheManager", "ImCache inId = " + str);
      k = i - c();
    } while ((k <= 0) || (c));
    c = true;
    e = true;
    a(str, k);
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    i = paramInt;
    d = r.c(f, g);
  }
  
  public com.duapps.ad.entity.a.c b()
  {
    Object localObject3 = j;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (j.size() > 0)
        {
          localObject2 = (IMData)j.remove(0);
          localObject1 = localObject2;
          if (localObject2 == null) {
            continue;
          }
          localObject1 = localObject2;
          if (!((IMData)localObject2).a()) {
            continue;
          }
          localObject1 = localObject2;
        }
        if (r.n(f)) {
          a();
        }
        localObject3 = f;
        if (localObject1 == null)
        {
          localObject2 = "FAIL";
          b.c((Context)localObject3, (String)localObject2, g);
          if (localObject1 != null) {
            break;
          }
          return null;
        }
      }
      finally {}
      Object localObject2 = "OK";
    }
    return new l(f, localIMData, h);
  }
  
  public int c()
  {
    int k;
    for (;;)
    {
      synchronized (j)
      {
        Iterator localIterator = j.iterator();
        k = 0;
        if (!localIterator.hasNext()) {
          break;
        }
        IMData localIMData = (IMData)localIterator.next();
        if ((localIMData == null) || (!localIMData.a())) {
          localIterator.remove();
        }
      }
      k += 1;
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */