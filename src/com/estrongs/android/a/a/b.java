package com.estrongs.android.a.a;

import android.content.pm.ApplicationInfo;
import com.estrongs.android.a.a;
import com.estrongs.android.a.b.q;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class b
  extends k
{
  private final Map<d, List<String>> a = a();
  private final ConcurrentHashMap<d, Queue<q>> b = new ConcurrentHashMap();
  private final AtomicInteger c = new AtomicInteger(0);
  private final AtomicLong d = new AtomicLong(0L);
  
  public static Map<d, List<String>> a()
  {
    for (;;)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        Object localObject1 = com.estrongs.android.a.l.k();
        if (localObject1 == null) {
          break;
        }
        localObject1 = ((List)localObject1).iterator();
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        Object localObject2 = (h)((Iterator)localObject1).next();
        if ((localObject2 instanceof d))
        {
          localObject2 = (d)localObject2;
          com.estrongs.android.util.l.e("getAssociatedPaths", "appname: " + a.packageName);
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = b.iterator();
          if (localIterator.hasNext())
          {
            com.estrongs.fs.impl.c.b localb = (com.estrongs.fs.impl.c.b)localIterator.next();
            com.estrongs.android.util.l.e("getAssociatedPaths", "----> " + localb.getAbsolutePath());
            localArrayList.add(localb.getAbsolutePath());
          }
          else
          {
            localMap.put(localObject2, j.a(localArrayList));
          }
        }
      }
      finally {}
    }
    return localMap;
  }
  
  public void a(a parama)
  {
    Object localObject1 = parama.b();
    if (localObject1 == null) {
      localObject1 = parama.c();
    }
    for (;;)
    {
      int j = localObject1.length;
      int i = 0;
      Object localObject3;
      if (i < j)
      {
        localObject3 = localObject1[i];
        String str = ((q)localObject3).e_();
        Iterator localIterator = a.keySet().iterator();
        label57:
        do
        {
          while (!parama.hasNext())
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localObject2 = (d)localIterator.next();
            parama = ((List)a.get(localObject2)).iterator();
          }
        } while (!ap.i((String)parama.next(), str));
        parama = (Queue)b.get(localObject2);
        if (parama != null) {
          break label217;
        }
        parama = new ConcurrentLinkedQueue();
        Object localObject2 = (Queue)b.putIfAbsent(localObject2, parama);
        if (localObject2 == null) {
          break label214;
        }
        parama = (a)localObject2;
      }
      label214:
      label217:
      for (;;)
      {
        parama.add(localObject3);
        c.incrementAndGet();
        d.addAndGet(((q)localObject3).d());
        break label57;
        i += 1;
        break;
        return;
      }
    }
  }
  
  protected boolean a(q paramq)
  {
    return false;
  }
  
  public final Map<d, Queue<q>> b_()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */