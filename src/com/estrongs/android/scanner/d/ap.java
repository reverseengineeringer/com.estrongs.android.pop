package com.estrongs.android.scanner.d;

import android.util.SparseArray;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.scanner.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

class ap
  implements Callable<Map<Long, List<b>>>
{
  private final int b;
  private final long c;
  private final long d;
  private final List<ar> e;
  
  public ap(ak paramak, int paramInt, long paramLong1, long paramLong2)
  {
    b = paramInt;
    c = paramLong1;
    d = paramLong2;
    e = ((List)ak.c(paramak).get(paramInt));
  }
  
  public Map<Long, List<b>> a()
  {
    Object localObject1 = Collections.emptyMap();
    String str = (String)ak.d(a).get(b);
    if (str == null) {
      return (Map<Long, List<b>>)localObject1;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext())
    {
      ar localar = (ar)localIterator.next();
      if ((e > c) && (d <= d))
      {
        Object localObject2 = a;
        long l = c;
        int i = ak.a(a, str, l, c, d);
        if (i != 0)
        {
          Object localObject3 = ak.a(a, str, (String)localObject2, l, c, d);
          if (!((List)localObject3).isEmpty())
          {
            b localb = new b();
            j = i;
            e = ((String)localObject2);
            if (ak.e(a) != null) {}
            for (d = ak.e(a).a(b);; d = b)
            {
              b = c;
              c = b;
              localObject2 = ((List)localObject3).iterator();
              while (((Iterator)localObject2).hasNext())
              {
                localObject3 = (i)((Iterator)localObject2).next();
                ((i)localObject3).a(b);
                i.add(localObject3);
              }
            }
            localArrayList.add(localb);
          }
        }
      }
    }
    if (!localArrayList.isEmpty())
    {
      localObject1 = new HashMap();
      ((Map)localObject1).put(Long.valueOf(d), localArrayList);
    }
    for (;;)
    {
      return (Map<Long, List<b>>)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */