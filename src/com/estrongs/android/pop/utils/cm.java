package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bd;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class cm
{
  BlockingQueue<Runnable> a;
  ThreadPoolExecutor b;
  ck<ct> c = new ck(3);
  Runnable d = new co(this);
  private LinkedList<Queue<cq>> e = new LinkedList();
  private int f;
  private int g = 0;
  private int h = 0;
  private boolean i = false;
  private ck<cs> j = new ck(3);
  private cr k = new cn(this);
  
  public cm()
  {
    this(Runtime.getRuntime().availableProcessors());
  }
  
  public cm(int paramInt)
  {
    this(paramInt, 3);
  }
  
  public cm(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    e.add(new LinkedList());
    a = new SynchronousQueue();
    paramInt1 = f / 2;
    if (paramInt1 < 1) {
      paramInt1 = m;
    }
    for (;;)
    {
      b = new ThreadPoolExecutor(paramInt1, f, 60L, TimeUnit.SECONDS, a, new cp(paramInt2));
      return;
      if (paramInt1 > 4) {
        paramInt1 = 4;
      }
    }
  }
  
  private cq a()
  {
    Queue localQueue = (Queue)e.getLast();
    cq localcq = (cq)localQueue.poll();
    if (localcq != null)
    {
      if ((localQueue.isEmpty()) && (e.size() > 1)) {
        e.remove(localQueue);
      }
      return localcq;
    }
    if (e.size() > 1)
    {
      e.remove(localQueue);
      return a();
    }
    return null;
  }
  
  private void a(cs paramcs)
  {
    try
    {
      g -= 1;
      j.a(paramcs);
      if ((g < 0) || (g >= f)) {
        g = 0;
      }
      if (g == 0) {
        bd.a(d);
      }
      return;
    }
    finally {}
  }
  
  private cq b()
  {
    try
    {
      cq localcq = a();
      if (localcq != null) {
        h -= 1;
      }
      return localcq;
    }
    finally {}
  }
  
  private void c()
  {
    try
    {
      e();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private cs d()
  {
    cs localcs2 = (cs)j.a();
    cs localcs1 = localcs2;
    if (localcs2 == null) {
      localcs1 = new cs(this);
    }
    return localcs1;
  }
  
  private void e()
  {
    try
    {
      while ((g < f) && (h > 0))
      {
        g += 1;
        Object localObject1 = null;
        try
        {
          cs localcs = d();
          localObject1 = localcs;
          b.execute(localcs);
        }
        catch (RejectedExecutionException localRejectedExecutionException)
        {
          a((cs)localObject1);
        }
      }
    }
    finally {}
  }
  
  private ct f()
  {
    Object localObject;
    if (c == null) {
      localObject = null;
    }
    ct localct;
    do
    {
      return (ct)localObject;
      localct = (ct)c.a();
      localObject = localct;
    } while (localct != null);
    return new ct(this, null);
  }
  
  public void a(cq paramcq)
  {
    try
    {
      ((Queue)e.getLast()).add(paramcq);
      h += 1;
      c();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */