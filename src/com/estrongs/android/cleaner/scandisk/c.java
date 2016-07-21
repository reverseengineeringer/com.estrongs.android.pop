package com.estrongs.android.cleaner.scandisk;

import android.text.TextUtils;
import com.estrongs.android.cleaner.scandisk.b.b;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
  implements com.estrongs.android.cleaner.g
{
  private static final String a = c.class.getSimpleName();
  private f b;
  private Set<String> c;
  private com.estrongs.android.cleaner.f d;
  private Map<String, g> e;
  private BlockingQueue<String> f;
  private ExecutorService g;
  private int h = 4;
  private AtomicBoolean i = new AtomicBoolean(false);
  private AtomicBoolean j = new AtomicBoolean(false);
  private volatile boolean k = true;
  
  public c(Set<String> paramSet, com.estrongs.android.cleaner.f paramf)
  {
    d = paramf;
    c = paramSet;
    f = new LinkedBlockingQueue();
    e = new HashMap();
  }
  
  private void a(int paramInt)
  {
    int m = paramInt;
    if (paramInt > 6) {
      m = 6;
    }
    h = m;
  }
  
  private void a(String paramString, boolean paramBoolean, g paramg)
  {
    if (paramString == null) {}
    while (!new File(paramString).exists()) {
      return;
    }
    Stack localStack = new Stack();
    localStack.push(paramString);
    label35:
    Object localObject;
    while (!localStack.empty())
    {
      paramString = (String)localStack.pop();
      localObject = new File(paramString).list();
      if (localObject != null)
      {
        i[] arrayOfi = new i[localObject.length];
        int i1 = localObject.length;
        int m = 0;
        int n = 0;
        if (m < i1)
        {
          String str1 = localObject[m];
          if (!k)
          {
            l.c(a, "receive the exit message!");
            return;
          }
          String str2 = paramString + "/" + str1;
          File localFile = new File(str2);
          if (localFile.isDirectory()) {
            if (a(str2)) {
              l.c(a, "yield the path:" + str2);
            }
          }
          for (;;)
          {
            m += 1;
            break;
            localStack.push(str2);
            continue;
            i locali = new i();
            a = str2;
            b = str1;
            d = localFile.length();
            c = str1;
            f = false;
            e = 0L;
            arrayOfi[n] = locali;
            n += 1;
          }
        }
        localObject = new h();
        a = 0L;
        b = paramString;
        f = arrayOfi;
        g = n;
        d = false;
        e = paramBoolean;
        if (n != 0) {
          break label354;
        }
      }
    }
    label354:
    for (c = 2;; c = 3)
    {
      paramg.a((h)localObject);
      break label35;
      break;
    }
  }
  
  private void a(List<com.estrongs.android.cleaner.f> paramList)
  {
    a(c.size());
    Object localObject1 = c.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      g localg = new g(d);
      Iterator localIterator1 = paramList.iterator();
      for (;;)
      {
        if (!localIterator1.hasNext()) {
          break label143;
        }
        com.estrongs.android.cleaner.f localf = (com.estrongs.android.cleaner.f)localIterator1.next();
        Iterator localIterator2 = localf.c().iterator();
        if (localIterator2.hasNext())
        {
          if (!((String)localObject2).startsWith((String)localIterator2.next())) {
            break;
          }
          localg.a(localf);
          localf.e();
        }
      }
      label143:
      e.put(localObject2, localg);
    }
    paramList = c.iterator();
    while (paramList.hasNext())
    {
      localObject1 = (String)paramList.next();
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!b.a((String)localObject1)))
      {
        localObject2 = (g)e.get(localObject1);
        try
        {
          f.put(localObject1);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
  
  private boolean a(String paramString)
  {
    return c.contains(paramString);
  }
  
  private void f()
  {
    e.clear();
    f.clear();
    if (g != null)
    {
      k = false;
      g.shutdownNow();
    }
    g = null;
  }
  
  public void a()
  {
    System.currentTimeMillis();
    g = Executors.newFixedThreadPool(h);
    int m = 0;
    while (m < h)
    {
      g.execute(new d(this));
      m += 1;
    }
  }
  
  public void a(List<com.estrongs.android.cleaner.f> paramList, f paramf)
  {
    l.b(a, "init...");
    if (paramf != null) {}
    for (b = paramf;; b = new b())
    {
      a(paramList);
      return;
    }
  }
  
  public void b()
  {
    f();
  }
  
  public void c()
  {
    l.b(a, "destroy...");
    b();
  }
  
  public void d()
  {
    if (!j.compareAndSet(false, true)) {
      return;
    }
    l.e(a, "call finish");
    f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */