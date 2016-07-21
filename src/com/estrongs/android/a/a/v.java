package com.estrongs.android.a.a;

import com.estrongs.android.a.a;
import com.estrongs.android.a.b.q;
import com.estrongs.android.a.b.r;
import com.estrongs.android.a.b.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

public class v
  extends k
{
  private final ThreadLocal<t> a;
  private final ConcurrentHashMap<Long, ConcurrentLinkedQueue<r>> b = new ConcurrentHashMap();
  private final ConcurrentHashMap<Long, ConcurrentHashMap<String, List<r>>> c = new ConcurrentHashMap();
  private final f d;
  private List<r> e;
  private CountDownLatch f;
  private AtomicInteger g;
  private int h;
  private long i;
  private int j;
  
  public v(int paramInt)
  {
    d = new f(paramInt);
    a = r.i();
    j = -1;
  }
  
  private void c(q paramq)
  {
    if (!a(paramq)) {
      return;
    }
    Object localObject2 = (com.estrongs.android.a.b.k)paramq;
    Object localObject1 = Long.valueOf(((com.estrongs.android.a.b.k)localObject2).d());
    paramq = (ConcurrentLinkedQueue)b.get(localObject1);
    int k;
    if (paramq == null)
    {
      paramq = new ConcurrentLinkedQueue();
      localObject1 = (ConcurrentLinkedQueue)b.putIfAbsent(localObject1, paramq);
      if (localObject1 == null) {
        break label201;
      }
      k = 1;
      paramq = (q)localObject1;
    }
    for (;;)
    {
      localObject1 = new r((com.estrongs.android.a.b.k)localObject2);
      if (k != 0)
      {
        localObject2 = paramq.iterator();
        for (;;)
        {
          if (((Iterator)localObject2).hasNext())
          {
            r localr = (r)((Iterator)localObject2).next();
            if (localr.equals(localObject1))
            {
              localr.m();
              return;
              k = 1;
              break;
            }
          }
        }
        ((r)localObject1).a(a.get()).a);
        localObject2 = (r)paramq.peek();
        if ((localObject2 != null) && (((r)localObject2).k() == null)) {
          ((r)localObject2).a(a.get()).b);
        }
      }
      ((r)localObject1).m();
      paramq.add(localObject1);
      return;
      label201:
      k = 0;
    }
  }
  
  public final m a(int paramInt)
  {
    int k = paramInt;
    if (paramInt > h) {
      k = h;
    }
    if (k <= 0) {
      return new m();
    }
    ArrayList localArrayList = new ArrayList(k);
    localArrayList.add(e.get(0));
    localArrayList.add(e.get(1));
    return new m(localArrayList, h, i);
  }
  
  public void a(a parama)
  {
    try
    {
      f.await();
      parama = parama.c();
      int m = parama.length;
      int k = 0;
      while (k < m)
      {
        c(parama[k]);
        k += 1;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
  
  public void a(List<String> paramList)
  {
    f = new CountDownLatch(paramList.size());
    g = new AtomicInteger(paramList.size());
    d.a();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      new Thread(new w(this, (String)paramList.next())).start();
    }
  }
  
  protected boolean a(q paramq)
  {
    return paramq.d() != 0L;
  }
  
  public void b()
  {
    super.b();
    h = 0;
    i = 0L;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator1 = b.entrySet().iterator();
    long l4 = 0L;
    long l2 = 0L;
    Object localObject1;
    Object localObject2;
    Long localLong;
    while (localIterator1.hasNext())
    {
      localObject1 = (Map.Entry)localIterator1.next();
      localObject2 = (ConcurrentLinkedQueue)((Map.Entry)localObject1).getValue();
      if (((ConcurrentLinkedQueue)localObject2).size() != 1)
      {
        localLong = (Long)((Map.Entry)localObject1).getKey();
        localObject1 = (ConcurrentHashMap)c.get(localLong);
        if (localObject1 != null) {
          break label615;
        }
        localObject1 = new ConcurrentHashMap();
        c.put(localLong, localObject1);
      }
    }
    label298:
    label615:
    for (;;)
    {
      Iterator localIterator2 = ((ConcurrentLinkedQueue)localObject2).iterator();
      long l3 = l2;
      long l1 = l4;
      Object localObject3;
      Object localObject4;
      while (localIterator2.hasNext())
      {
        r localr = (r)localIterator2.next();
        if (localr.j() == 0L) {
          localArrayList1.add(localr);
        }
        while (localr.l())
        {
          localObject3 = localr.k();
          localObject2 = localObject3;
          if (localObject3 != null) {
            break label298;
          }
          localObject3 = localr.a(a.get()).a);
          localObject2 = localObject3;
          if (localObject3 != null) {
            break label298;
          }
          if (localr.j() != 0L) {
            break;
          }
          localArrayList1.remove(localr);
          break;
        }
        localArrayList2.add(Long.valueOf(localr.j()));
        continue;
        localObject4 = (List)((ConcurrentHashMap)localObject1).get(localObject2);
        localObject3 = localObject4;
        if (localObject4 == null)
        {
          localObject3 = new ArrayList();
          ((ConcurrentHashMap)localObject1).put(localObject2, localObject3);
        }
        ((List)localObject3).add(localr);
        h += 1;
        i += localr.d();
        int k = ((List)localObject3).size();
        if (k > l3)
        {
          l3 = k;
          l1 = localLong.longValue();
          e = ((List)localObject3);
        }
        else if ((k == l3) && (localLong.longValue() > l1))
        {
          l1 = localLong.longValue();
          e = ((List)localObject3);
        }
      }
      localObject2 = ((ConcurrentHashMap)localObject1).entrySet().iterator();
      for (;;)
      {
        l4 = l1;
        l2 = l3;
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        localObject4 = (List)((Map.Entry)localObject3).getValue();
        if (((List)localObject4).size() < 2)
        {
          ((ConcurrentHashMap)localObject1).remove(((Map.Entry)localObject3).getKey());
          localObject3 = ((List)localObject4).iterator();
          while (((Iterator)localObject3).hasNext())
          {
            localObject4 = (r)((Iterator)localObject3).next();
            h -= 1;
            i -= ((r)localObject4).d();
          }
        }
      }
      d.a();
      d.a(localArrayList1);
      d.b(localArrayList2);
      d.b();
      b.clear();
      return;
    }
  }
  
  public void b(int paramInt)
  {
    j = paramInt;
  }
  
  public boolean b(List<q> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramList.iterator();
    Object localObject1;
    Long localLong;
    ConcurrentHashMap localConcurrentHashMap;
    Object localObject2;
    while (localIterator1.hasNext())
    {
      localObject1 = (q)localIterator1.next();
      localLong = Long.valueOf(((q)localObject1).d());
      localConcurrentHashMap = (ConcurrentHashMap)c.get(localLong);
      if (localConcurrentHashMap != null) {
        localObject2 = localConcurrentHashMap.keySet().iterator();
      }
    }
    label76:
    label334:
    for (;;)
    {
      String str;
      List localList;
      if (((Iterator)localObject2).hasNext())
      {
        str = (String)((Iterator)localObject2).next();
        localList = (List)localConcurrentHashMap.get(str);
        Iterator localIterator2 = localList.iterator();
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
          paramList = (r)localIterator2.next();
        } while (!paramList.equals(localObject1));
      }
      for (;;)
      {
        if (paramList == null) {
          break label334;
        }
        if (localList.remove(paramList)) {
          localArrayList.add(Long.valueOf(paramList.j()));
        }
        if (!localList.isEmpty()) {
          break label76;
        }
        localConcurrentHashMap.remove(str);
        break label76;
        if (localConcurrentHashMap.size() != 1) {
          break;
        }
        paramList = localConcurrentHashMap.keySet().iterator();
        while (paramList.hasNext())
        {
          localObject1 = (String)paramList.next();
          localObject2 = (List)localConcurrentHashMap.get(localObject1);
          if (((List)localObject2).size() == 1)
          {
            localArrayList.add(Long.valueOf(((r)((List)localObject2).get(0)).j()));
            localConcurrentHashMap.remove(localObject1);
            c.remove(localLong);
          }
        }
        break;
        d.a();
        d.b(localArrayList);
        d.b();
        return true;
        paramList = null;
      }
    }
  }
  
  public final Map<String, List<r>> c()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = c.values().iterator();
    while (localIterator1.hasNext())
    {
      Map localMap = (Map)localIterator1.next();
      Iterator localIterator2 = localMap.entrySet().iterator();
      while (localIterator2.hasNext()) {
        if (((List)((Map.Entry)localIterator2.next()).getValue()).size() > 1) {}
      }
      localHashMap.putAll(localMap);
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */