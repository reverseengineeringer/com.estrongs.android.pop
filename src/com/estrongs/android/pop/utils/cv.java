package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bk;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class cv
{
  BlockingQueue<Runnable> a;
  ThreadPoolExecutor b;
  ct<dc> c = new ct(3);
  Runnable d = new cx(this);
  private LinkedList<LinkedList<cz>> e = new LinkedList();
  private int f;
  private int g = 0;
  private int h = 0;
  private boolean i = false;
  private ct<db> j = new ct(3);
  private da k = new cw(this);
  
  public cv()
  {
    this(0, Runtime.getRuntime().availableProcessors(), 3);
  }
  
  public cv(int paramInt)
  {
    this(0, paramInt, 3);
  }
  
  public cv(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3);
  }
  
  private cz a()
  {
    LinkedList localLinkedList = (LinkedList)e.getLast();
    cz localcz = (cz)localLinkedList.poll();
    if (localcz != null)
    {
      if ((localLinkedList.isEmpty()) && (e.size() > 1)) {
        e.remove(localLinkedList);
      }
      return localcz;
    }
    if (e.size() > 1)
    {
      e.remove(localLinkedList);
      return a();
    }
    return null;
  }
  
  private void a(db paramdb)
  {
    try
    {
      g -= 1;
      j.a(paramdb);
      if ((g < 0) || (g >= f)) {
        g = 0;
      }
      if (g == 0) {
        bk.a(d);
      }
      return;
    }
    finally {}
  }
  
  private cz b()
  {
    try
    {
      cz localcz = a();
      if (localcz != null) {
        h -= 1;
      }
      return localcz;
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
  
  private db d()
  {
    db localdb2 = (db)j.a();
    db localdb1 = localdb2;
    if (localdb2 == null) {
      localdb1 = new db(this);
    }
    return localdb1;
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
          db localdb = d();
          localObject1 = localdb;
          b.execute(localdb);
        }
        catch (RejectedExecutionException localRejectedExecutionException)
        {
          a((db)localObject1);
        }
      }
    }
    finally {}
  }
  
  private dc f()
  {
    Object localObject;
    if (c == null) {
      localObject = null;
    }
    dc localdc;
    do
    {
      return (dc)localObject;
      localdc = (dc)c.a();
      localObject = localdc;
    } while (localdc != null);
    return new dc(this, null);
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    f = paramInt2;
    e.add(new LinkedList());
    a = new SynchronousQueue();
    b = new ThreadPoolExecutor(paramInt1, f, 60L, TimeUnit.SECONDS, a, new cy(paramInt3));
  }
  
  public void a(cz paramcz)
  {
    try
    {
      ((LinkedList)e.getLast()).add(paramcz);
      h += 1;
      c();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */