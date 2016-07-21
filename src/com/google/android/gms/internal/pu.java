package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@me
public class pu<T>
  implements pq<T>
{
  protected int a = 0;
  protected final BlockingQueue<pu<T>.pv> b = new LinkedBlockingQueue();
  protected T c;
  private final Object d = new Object();
  
  public void a(pt<T> parampt, pr parampr)
  {
    for (;;)
    {
      synchronized (d)
      {
        if (a == 1)
        {
          parampt.a(c);
          return;
        }
        if (a == -1) {
          parampr.a();
        }
      }
      if (a == 0) {
        b.add(new pv(this, parampt, parampr));
      }
    }
  }
  
  public void a(T paramT)
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    c = paramT;
    a = 1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexta.a(paramT);
    }
    b.clear();
  }
  
  public void e()
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    a = -1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nextb.a();
    }
    b.clear();
  }
  
  public int f()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.pu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */