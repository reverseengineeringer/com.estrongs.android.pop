package com.estrongs.android.pop.app.c;

import com.estrongs.android.pop.app.c.a.a;
import com.estrongs.android.pop.app.c.a.b;
import com.estrongs.android.pop.app.c.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class k
{
  private Object a = new Object();
  private j b = null;
  private List<Boolean> c = null;
  private int d = -1;
  private c e = new a();
  private int f;
  private int g = 0;
  
  public k()
  {
    e.d(g);
  }
  
  public void a()
  {
    synchronized (a)
    {
      if (d < 0) {
        d = e.e(0);
      }
      e.b(j());
      e.c(d);
      return;
    }
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
    if (paramInt == 0) {}
    for (e = new a();; e = new b())
    {
      e.d(g);
      e.b(j());
      e.c(d);
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt >= 0) && (paramInt < c.size())) {
      c.set(paramInt, Boolean.valueOf(paramBoolean));
    }
  }
  
  public void a(List<String> paramList)
  {
    Object localObject = a;
    if (paramList != null) {}
    try
    {
      if (paramList.size() == 0) {
        return;
      }
      j();
      int i = 0;
      while (i < paramList.size())
      {
        b.b((String)paramList.get(i));
        c.add(Boolean.valueOf(true));
        i += 1;
      }
      e.b(j());
      e.c(d);
      return;
    }
    finally {}
  }
  
  public boolean a(j paramj)
  {
    if (paramj == null)
    {
      b = paramj;
      d = -1;
      return true;
    }
    synchronized (a)
    {
      b = paramj;
      d = -1;
      c = new ArrayList();
      int i = 0;
      while (i < paramj.c().size())
      {
        c.add(Boolean.valueOf(true));
        i += 1;
      }
      e.b(paramj.c().size());
      e.c();
      return true;
    }
  }
  
  public int b()
  {
    i = e.f();
    try
    {
      for (;;)
      {
        boolean bool = ((Boolean)c.get(i)).booleanValue();
        if (bool) {
          break;
        }
        i += 1;
      }
      return i;
    }
    catch (Exception localException)
    {
      return 0;
    }
  }
  
  public void b(int paramInt)
  {
    g = paramInt;
    e.d(paramInt);
  }
  
  public void b(List<i> paramList)
  {
    i locali1;
    synchronized (a)
    {
      if ((paramList.size() < 0) || (b == null)) {
        return;
      }
      locali1 = (i)b.c().get(d);
      Iterator localIterator = paramList.iterator();
      if (localIterator.hasNext())
      {
        i locali2 = (i)localIterator.next();
        i = b.c().indexOf(locali2);
        if (c.size() > i) {
          c.remove(i);
        }
        b.a(locali2);
      }
    }
    int i = d;
    d = b.c().indexOf(locali1);
    if ((d < 0) && (paramList.size() == 1) && (i < j())) {
      d = i;
    }
    if ((f == 1) && (d < 0)) {
      d = 0;
    }
    e.b(j());
    e.c(d);
  }
  
  public int c()
  {
    return f;
  }
  
  public boolean c(int paramInt)
  {
    return (paramInt >= 0) && (b != null) && (paramInt < b.c().size());
  }
  
  public int d()
  {
    return g;
  }
  
  public boolean d(int paramInt)
  {
    if (!c(paramInt)) {
      return false;
    }
    d = paramInt;
    e.c(d);
    return true;
  }
  
  public j e()
  {
    return b;
  }
  
  public int f()
  {
    if (d == -1) {
      a();
    }
    return d;
  }
  
  public i g()
  {
    if (f() == -1) {}
    while ((b == null) || (b.c().size() < 1)) {
      return null;
    }
    return (i)b.c().get(d);
  }
  
  public boolean h()
  {
    return b != null;
  }
  
  public boolean i()
  {
    return (b == null) || (b.c().size() == 0);
  }
  
  public int j()
  {
    if (b == null) {
      return 0;
    }
    return b.c().size();
  }
  
  public int k()
  {
    return e.d();
  }
  
  public int l()
  {
    return e.e();
  }
  
  public int m()
  {
    int i = d;
    return e.e(i + 1);
  }
  
  public boolean n()
  {
    int i = m();
    if (i == -1) {
      return false;
    }
    d = i;
    e.c(d);
    return true;
  }
  
  public int o()
  {
    int i = d;
    int j = j();
    return e.e((i - 1) % j);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */