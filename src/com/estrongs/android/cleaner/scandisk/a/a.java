package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.f;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a
  implements f
{
  protected CopyOnWriteArrayList<e> a;
  protected AtomicInteger b = new AtomicInteger(0);
  protected com.estrongs.android.cleaner.h c;
  protected int d = 0;
  protected final String e;
  protected final com.estrongs.android.cleaner.i f;
  private List<String> g;
  
  public a(com.estrongs.android.cleaner.i parami, List<String> paramList, int paramInt)
  {
    g = j.a(paramList);
    e = j.a(2131231188);
    a = new CopyOnWriteArrayList();
    f = parami;
    c = new com.estrongs.android.cleaner.h(a());
    c.a(0);
    c.b(a());
    c.b(f());
    c.d(j.a(paramInt));
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    l.e(f(), "add callback:" + parame);
    a.add(parame);
  }
  
  protected abstract void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami);
  
  public void a(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    if (paramh == null) {}
    do
    {
      return;
      if (c == 1)
      {
        try
        {
          d -= 1;
          if (d <= 0)
          {
            l.e(f(), this + " finish");
            paramh = a.iterator();
            while (paramh.hasNext())
            {
              e locale = (e)paramh.next();
              l.c(f(), "finish on: " + locale);
              locale.b(c);
            }
          }
        }
        finally {}
        return;
      }
    } while (!c(paramh));
    b(paramh);
  }
  
  protected abstract boolean a(com.estrongs.android.cleaner.scandisk.i parami);
  
  public void b()
  {
    l.e(f(), this + " start...");
  }
  
  public void b(e parame)
  {
    l.e(f(), "remove callback:" + parame);
    a.remove(parame);
  }
  
  protected void b(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    com.estrongs.android.cleaner.scandisk.i[] arrayOfi = f;
    int i = 0;
    if (i < g)
    {
      com.estrongs.android.cleaner.scandisk.i locali = arrayOfi[i];
      if (!a(locali)) {}
      for (;;)
      {
        i += 1;
        break;
        com.estrongs.android.cleaner.h localh = new com.estrongs.android.cleaner.h(b.incrementAndGet(), c.b() + 1, c);
        localh.a(4);
        localh.b(a());
        localh.b(b);
        localh.d(b);
        localh.a(a);
        localh.a(d);
        localh.c(e);
        localh.d(a);
        localh.c(e);
        a(localh, locali);
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
          ((e)localIterator.next()).a(localh);
        }
        f = true;
        d = true;
      }
    }
  }
  
  public List<String> c()
  {
    return g;
  }
  
  public void c(e parame)
  {
    l.e(f(), this + " check finish status");
    if ((d <= 0) && (parame != null))
    {
      l.c(f(), "finish on: " + parame);
      parame.b(c);
    }
  }
  
  protected abstract boolean c(com.estrongs.android.cleaner.scandisk.h paramh);
  
  public com.estrongs.android.cleaner.h d()
  {
    return c;
  }
  
  public void e()
  {
    try
    {
      d += 1;
      return;
    }
    finally {}
  }
  
  protected abstract String f();
  
  public String toString()
  {
    return "Filter:" + f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */