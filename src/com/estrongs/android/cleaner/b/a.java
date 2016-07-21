package com.estrongs.android.cleaner.b;

import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.g;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.cleaner.i;
import com.estrongs.android.cleaner.scandisk.c;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class a
{
  private ConcurrentHashMap<com.estrongs.android.cleaner.a, e> a = new ConcurrentHashMap();
  private List<com.estrongs.android.cleaner.f> b = new ArrayList();
  private List<com.estrongs.android.cleaner.f> c = new ArrayList();
  private List<com.estrongs.android.cleaner.f> d = new ArrayList();
  private com.estrongs.android.cleaner.f e;
  private Set<String> f = new HashSet();
  private com.estrongs.android.cleaner.scandisk.f g;
  private g h;
  private com.estrongs.android.cleaner.a.a i;
  private i j = new i();
  private AtomicBoolean k = new AtomicBoolean(false);
  
  private long a(h arg1, HashSet<String> paramHashSet)
  {
    long l = 0L;
    for (;;)
    {
      synchronized (???.l())
      {
        Iterator localIterator = ???.iterator();
        if (localIterator.hasNext())
        {
          h localh = (h)localIterator.next();
          if (localh.f() != 4) {
            l = a(localh, paramHashSet) + l;
          } else if (localh.a()) {
            if (paramHashSet.add(localh.d())) {
              l = localh.j() + l;
            }
          }
        }
        else
        {
          return l;
        }
      }
    }
  }
  
  private void a(com.estrongs.android.cleaner.f paramf)
  {
    if (paramf == null) {
      return;
    }
    Iterator localIterator = paramf.c().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      f.add(str);
    }
    d.add(paramf);
    b.add(paramf);
  }
  
  private void b(com.estrongs.android.cleaner.f paramf)
  {
    if (paramf == null) {
      return;
    }
    c.add(paramf);
    b.add(paramf);
  }
  
  private void c(com.estrongs.android.cleaner.f paramf)
  {
    e = paramf;
  }
  
  private void j()
  {
    if (b.isEmpty()) {
      l.e("context", "ScanFilters is empty...");
    }
    for (;;)
    {
      return;
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        ((com.estrongs.android.cleaner.f)localIterator.next()).b();
      }
    }
  }
  
  public int a(com.estrongs.android.cleaner.a parama)
  {
    for (;;)
    {
      try
      {
        l.e("context", "unbindCleaner, client num:" + a.size());
        if (parama == null)
        {
          m = a.size();
          return m;
        }
        parama = (e)a.remove(parama);
        if (parama == null)
        {
          m = a.size();
          continue;
        }
        Iterator localIterator = b.iterator();
        if (localIterator.hasNext())
        {
          ((com.estrongs.android.cleaner.f)localIterator.next()).b(parama);
          continue;
        }
        if (e == null) {
          break label134;
        }
      }
      finally {}
      e.b(parama);
      label134:
      if (i != null) {
        i.b(parama);
      }
      int m = a.size();
    }
  }
  
  public i a()
  {
    return j;
  }
  
  public void a(com.estrongs.android.cleaner.a parama, int paramInt)
  {
    l.e("context", "startScan...");
    Object localObject = e();
    parama = (e)a.get(parama);
    parama.a((List)localObject);
    if (!k.compareAndSet(false, true))
    {
      l.e("context", "scanner is running...");
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((com.estrongs.android.cleaner.f)((Iterator)localObject).next()).c(parama);
      }
    }
    j();
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      i = new com.estrongs.android.cleaner.a.a();
      i.a();
      return;
      i = new com.estrongs.android.cleaner.a.a();
      i.a();
      h = new c(f, e);
      h.a(d, g);
      h.a();
      parama = c.iterator();
      while (parama.hasNext()) {
        new Thread(new b(this, (com.estrongs.android.cleaner.f)parama.next())).start();
      }
    }
  }
  
  public void a(com.estrongs.android.cleaner.a parama, e parame)
  {
    if ((parama == null) || (parame == null)) {}
    for (;;)
    {
      return;
      try
      {
        a.put(parama, parame);
        parama = b.iterator();
        while (parama.hasNext()) {
          ((com.estrongs.android.cleaner.f)parama.next()).a(parame);
        }
        if (e == null) {
          break label82;
        }
      }
      finally {}
      e.a(parame);
      label82:
      if (i != null) {
        i.a(parame);
      }
    }
  }
  
  public long b()
  {
    return j.a();
  }
  
  public long c()
  {
    return j.b();
  }
  
  public long d()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = e().iterator();
    long l = 0L;
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (localh.a()) {
        l = a(localh, localHashSet) + l;
      }
    }
    return l;
  }
  
  public List<h> e()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((com.estrongs.android.cleaner.f)localIterator.next()).d());
    }
    if (i != null) {
      localArrayList.add(i.c());
    }
    return localArrayList;
  }
  
  public void f() {}
  
  public void g()
  {
    try
    {
      k.set(false);
      l.e("context", "cancelScan");
      if (i != null) {
        i.b();
      }
      if (h != null) {
        h.b();
      }
      h = null;
      return;
    }
    finally {}
  }
  
  public void h()
  {
    try
    {
      k.set(false);
      l.e("context", "finishScan");
      if (h != null) {
        h.d();
      }
      h = null;
      return;
    }
    finally {}
  }
  
  public void i()
  {
    try
    {
      l.e("context", "destroyScan");
      k.set(false);
      if (h != null) {
        h.c();
      }
      h = null;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */