package com.duapps.ad.base;

import android.content.Context;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.entity.a.a;
import com.duapps.ad.entity.a.c;
import com.duapps.ad.entity.f;
import com.duapps.ad.stats.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ae
  extends a<c>
{
  private static final String i = ae.class.getSimpleName();
  am<AdModel> a = new af(this);
  private final List<AdData> j = Collections.synchronizedList(new LinkedList());
  
  public ae(Context paramContext, int paramInt, long paramLong)
  {
    super(paramContext, paramInt, paramLong);
  }
  
  private List<AdData> a(List<AdData> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AdData localAdData = (AdData)paramList.next();
      if (!ap.a(f, c)) {
        localArrayList.add(localAdData);
      }
    }
    return localArrayList;
  }
  
  public void a()
  {
    if (!ap.a(f))
    {
      l.c(i, "no net");
      return;
    }
    if (c() > 0)
    {
      l.c(i, "no need refresh");
      return;
    }
    if (c)
    {
      l.c(i, "ad request refreshing");
      return;
    }
    t.a(f).a(Integer.valueOf(g).intValue(), 1, a);
  }
  
  public void a(int paramInt)
  {
    d = r.a(f, g);
  }
  
  public c b()
  {
    Object localObject3 = j;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (j.size() > 0)
        {
          localObject2 = (AdData)j.remove(0);
          localObject1 = localObject2;
          if (localObject2 == null) {
            continue;
          }
          localObject1 = localObject2;
          if (!((AdData)localObject2).a()) {
            continue;
          }
          localObject1 = localObject2;
        }
        localObject3 = i;
        StringBuilder localStringBuilder = new StringBuilder().append("DL poll title-> ");
        if (localObject1 != null)
        {
          localObject2 = b;
          l.c((String)localObject3, (String)localObject2);
          if (r.n(f)) {
            a();
          }
          localObject3 = f;
          if (localObject1 != null) {
            break label146;
          }
          localObject2 = "FAIL";
          b.b((Context)localObject3, (String)localObject2, g);
          if (localObject1 != null) {
            break;
          }
          return null;
        }
      }
      finally {}
      Object localObject2 = "null";
      continue;
      label146:
      localObject2 = "OK";
    }
    return new f(f, localAdData, h);
  }
  
  public int c()
  {
    int k = 0;
    synchronized (j)
    {
      Iterator localIterator = j.iterator();
      if (!localIterator.hasNext()) {
        break label94;
      }
      localObject2 = (AdData)localIterator.next();
      if ((localObject2 == null) || (!((AdData)localObject2).a())) {
        localIterator.remove();
      }
    }
    Object localObject2 = c;
    if (ap.a(f, (String)localObject2))
    {
      ((Iterator)localObject1).remove();
      break label98;
      label94:
      return k;
    }
    for (;;)
    {
      label98:
      break;
      k += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */