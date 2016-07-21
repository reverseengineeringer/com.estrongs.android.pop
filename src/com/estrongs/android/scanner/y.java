package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.util.l;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class y
{
  private static final String a = y.class.getSimpleName();
  private volatile boolean b;
  private volatile boolean c;
  private final boolean d;
  private ExecutorService e;
  private CyclicBarrier f;
  private AtomicInteger g;
  private BlockingQueue<f> h;
  private com.estrongs.android.scanner.c.g[] i;
  private com.estrongs.android.scanner.c.g j;
  private com.estrongs.android.scanner.c.g k;
  
  public y(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  private void b(f paramf)
  {
    try
    {
      g.incrementAndGet();
      h.put(paramf);
      return;
    }
    catch (InterruptedException paramf)
    {
      paramf.printStackTrace();
    }
  }
  
  private void c()
  {
    int m = 0;
    l.b(a, "start processing...");
    g.set(0);
    b = true;
    c = false;
    am localam = new am("Disk Scanner Handler");
    int n = Runtime.getRuntime().availableProcessors() + 2;
    e = Executors.newFixedThreadPool(n, localam);
    f = new CyclicBarrier(n);
    while (m < n)
    {
      e.execute(new z(this));
      m += 1;
    }
  }
  
  private void c(f paramf)
  {
    d(paramf);
  }
  
  private void d(f paramf)
  {
    if (j != null) {}
    try
    {
      j.a(paramf);
      com.estrongs.android.scanner.c.g[] arrayOfg = i;
      int n = arrayOfg.length;
      int m = 0;
      while (m < n)
      {
        arrayOfg[m].a(paramf);
        m += 1;
      }
      while (k == null) {}
    }
    catch (Exception paramf)
    {
      paramf.printStackTrace();
      return;
    }
    k.a(paramf);
  }
  
  private final boolean d()
  {
    l.c(a, "Processor Tracer: " + g.get() + ", Queue: " + h.size());
    if ((c) && (g.get() == 0) && (h.isEmpty()))
    {
      l.c(a, "check the processor finished!");
      synchronized (h)
      {
        if (!b) {
          return true;
        }
        b = false;
        return true;
      }
    }
    return false;
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    com.estrongs.android.scanner.c.g[] arrayOfg = i;
    int n = arrayOfg.length;
    int m = 0;
    while (m < n)
    {
      c localc = arrayOfg[m].a(paramString1, paramString2, paramInt);
      if (localc != null) {
        return localc;
      }
      m += 1;
    }
    return null;
  }
  
  public d a(String paramString1, String paramString2)
  {
    com.estrongs.android.scanner.c.g[] arrayOfg = i;
    int n = arrayOfg.length;
    int m = 0;
    while (m < n)
    {
      d locald = arrayOfg[m].a(paramString1, paramString2);
      if (locald != null) {
        return locald;
      }
      m += 1;
    }
    return null;
  }
  
  public void a(a parama)
  {
    if (j != null) {
      j.a(parama);
    }
    com.estrongs.android.scanner.c.g[] arrayOfg = i;
    int n = arrayOfg.length;
    int m = 0;
    while (m < n)
    {
      arrayOfg[m].a(parama);
      m += 1;
    }
    if (k != null) {
      k.a(parama);
    }
  }
  
  public void a(f paramf)
  {
    if (d)
    {
      b(paramf);
      return;
    }
    c(paramf);
  }
  
  public void a(com.estrongs.android.scanner.a.g paramg)
  {
    if (j != null) {}
    try
    {
      j.a(paramg);
      com.estrongs.android.scanner.c.g[] arrayOfg = i;
      int n = arrayOfg.length;
      int m = 0;
      while (m < n)
      {
        arrayOfg[m].a(paramg);
        m += 1;
      }
      while (k == null) {}
    }
    catch (Exception paramg)
    {
      paramg.printStackTrace();
      return;
    }
    k.a(paramg);
  }
  
  public void a(com.estrongs.android.scanner.c.g paramg)
  {
    j = paramg;
  }
  
  public void a(ExecutorService paramExecutorService)
  {
    long l1 = System.currentTimeMillis();
    i = a();
    int n;
    int m;
    CountDownLatch localCountDownLatch;
    if (paramExecutorService != null)
    {
      n = i.length;
      m = n;
      if (j != null) {
        m = n + 1;
      }
      n = m;
      if (k != null) {
        n = m + 1;
      }
      localCountDownLatch = new CountDownLatch(n);
      com.estrongs.android.scanner.c.g[] arrayOfg = i;
      n = arrayOfg.length;
      m = 0;
      while (m < n)
      {
        paramExecutorService.execute(new aa(this, arrayOfg[m], localCountDownLatch));
        m += 1;
      }
      if (j != null) {
        paramExecutorService.execute(new aa(this, j, localCountDownLatch));
      }
      if (k != null) {
        paramExecutorService.execute(new aa(this, k, localCountDownLatch));
      }
    }
    for (;;)
    {
      try
      {
        localCountDownLatch.await();
        long l2 = System.currentTimeMillis();
        l.e(a, "Expired: " + (l2 - l1) + " ms to load handler cache");
        if (d)
        {
          g = new AtomicInteger(0);
          h = new LinkedBlockingQueue();
          c();
        }
        return;
      }
      catch (InterruptedException paramExecutorService)
      {
        paramExecutorService.printStackTrace();
        continue;
      }
      paramExecutorService = i;
      n = paramExecutorService.length;
      m = 0;
      while (m < n)
      {
        paramExecutorService[m].a(false);
        m += 1;
      }
      if (j != null) {
        j.a(false);
      }
      if (k != null) {
        k.a(false);
      }
    }
  }
  
  protected abstract com.estrongs.android.scanner.c.g[] a();
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */