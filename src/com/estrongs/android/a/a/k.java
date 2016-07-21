package com.estrongs.android.a.a;

import com.estrongs.android.a.a;
import com.estrongs.android.a.b.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public abstract class k
  implements o
{
  private final AtomicInteger a = new AtomicInteger(0);
  private final AtomicLong b = new AtomicLong(0L);
  private final ConcurrentLinkedQueue<q> c = new ConcurrentLinkedQueue();
  private m d = new m();
  
  public k()
  {
    d.a = new ArrayList();
  }
  
  private void c(q paramq)
  {
    c.add(paramq);
    a.incrementAndGet();
    b.addAndGet(paramq.d());
  }
  
  public m a(int paramInt)
  {
    int i = 2;
    if (paramInt <= 0) {
      return new m();
    }
    int j = d.a.size();
    if (j == 0) {
      return new m();
    }
    ArrayList localArrayList;
    Comparator localComparator;
    Object localObject2;
    Object localObject3;
    Object localObject1;
    if (j == 1)
    {
      paramInt = 1;
      localArrayList = new ArrayList(paramInt);
      if (paramInt <= 1) {
        break label297;
      }
      localComparator = f();
      localObject2 = (q)d.a.get(0);
      localObject3 = (q)d.a.get(1);
      if (localComparator.compare(localObject3, localObject2) >= 0) {
        break label321;
      }
      paramInt = i;
      localObject1 = localObject3;
    }
    for (;;)
    {
      label123:
      if (paramInt < j)
      {
        Object localObject4;
        if (localComparator.compare(d.a.get(paramInt), localObject1) < 0)
        {
          localObject4 = (q)d.a.get(paramInt);
          localObject3 = localObject1;
        }
        for (;;)
        {
          paramInt += 1;
          localObject2 = localObject3;
          localObject1 = localObject4;
          break label123;
          paramInt = 2;
          break;
          localObject3 = localObject2;
          localObject4 = localObject1;
          if (localComparator.compare(d.a.get(paramInt), localObject2) < 0)
          {
            localObject3 = (q)d.a.get(paramInt);
            localObject4 = localObject1;
          }
        }
      }
      localArrayList.add(localObject1);
      localArrayList.add(localObject2);
      for (;;)
      {
        return new m(localArrayList, a.get(), b.get());
        label297:
        localArrayList.add(d.a.get(0));
      }
      label321:
      localObject1 = localObject2;
      localObject2 = localObject3;
      paramInt = i;
    }
  }
  
  public final List<q> a(Class<? extends q> paramClass)
  {
    Collections.sort(d.a, f());
    return d.a;
  }
  
  public void a(a parama)
  {
    parama = parama.c();
    int j = parama.length;
    int i = 0;
    q localq;
    if (i < j)
    {
      localq = parama[i];
      if (Thread.currentThread().isInterrupted()) {
        com.estrongs.android.util.l.e(getClass().getSimpleName(), "收到线程中断！！");
      }
    }
    else
    {
      return;
    }
    if (!a(localq)) {}
    for (;;)
    {
      i += 1;
      break;
      c(localq);
      b(localq);
    }
  }
  
  public void a(List<String> paramList) {}
  
  protected abstract boolean a(q paramq);
  
  public void b()
  {
    com.estrongs.android.util.l.c(getClass().getSimpleName(), "finish!");
    d.a = new ArrayList(c);
  }
  
  protected void b(q paramq) {}
  
  public boolean b(List<q> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      q localq = (q)paramList.next();
      d.a.remove(localq);
    }
    return true;
  }
  
  public void c_() {}
  
  public final List<q> e()
  {
    Collections.sort(d.a, f());
    return d.a;
  }
  
  protected Comparator<q> f()
  {
    return new l(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */