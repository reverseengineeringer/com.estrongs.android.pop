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

public class ah
  extends a<c>
{
  private static final String i = ah.class.getSimpleName();
  am<AdModel> a = new ai(this);
  private final List<AdData> j = Collections.synchronizedList(new LinkedList());
  private int k;
  
  public ah(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    super(paramContext, paramInt1, paramLong);
    k = paramInt2;
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
    int m = c();
    if (k - m <= 0)
    {
      l.c(i, "no need refresh");
      return;
    }
    if (c)
    {
      l.c(i, "ad request refreshing");
      return;
    }
    t.a(f).a(Integer.valueOf(g).intValue(), 1, a, k - m);
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    k = paramInt;
    d = r.e(f, g);
  }
  
  public f b()
  {
    Object localObject3 = j;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        Object localObject2;
        if (j.size() > 0)
        {
          localObject2 = (AdData)j.remove(0);
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (((AdData)localObject2).a()) {
              localObject1 = localObject2;
            }
          }
        }
        else
        {
          String str = i;
          StringBuilder localStringBuilder = new StringBuilder().append("OL poll title-> ");
          if (localObject1 != null)
          {
            localObject2 = b;
            l.c(str, (String)localObject2);
            localObject3 = f;
            if (localObject1 == null)
            {
              localObject2 = "FAIL";
              b.d((Context)localObject3, (String)localObject2, g);
              if (r.n(f)) {
                a();
              }
              if (localObject1 != null) {
                break;
              }
              return null;
            }
          }
          else
          {
            localObject2 = "null";
            continue;
          }
          localObject2 = "OK";
        }
      }
      finally {}
    }
    return new f(f, localAdData, h);
  }
  
  public int c()
  {
    int m = 0;
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
      return m;
    }
    for (;;)
    {
      label98:
      break;
      m += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */