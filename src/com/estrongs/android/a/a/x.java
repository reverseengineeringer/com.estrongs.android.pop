package com.estrongs.android.a.a;

import com.estrongs.android.a.a;
import com.estrongs.android.a.b.o;
import com.estrongs.android.a.b.q;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class x
  extends k
{
  private final long a = 307200L;
  private final List<o> b = new LinkedList();
  private final List<Set<o>> c = new ArrayList();
  private int d = 0;
  private long e = 0L;
  private Comparator<o> f = new y(this);
  private Comparator<q> g = new z(this);
  
  public final m a(int paramInt)
  {
    int i = paramInt;
    if (paramInt > d) {
      i = d;
    }
    if (i <= 0) {
      return new m();
    }
    return new m(new ArrayList((Collection)c.get(0)), d, e);
  }
  
  public void a(a parama)
  {
    parama = parama.c();
    int j = parama.length;
    int i = 0;
    if (i < j)
    {
      o localo = parama[i];
      if ((!(localo instanceof o)) || (localo.d() < a)) {}
      for (;;)
      {
        i += 1;
        break;
        localo = (o)localo;
        if ((localo.i() != 0L) && ((localo.i() != localo.f()) || (localo.i() % 1000L != 0L)))
        {
          String str = ap.bR(localo.f_());
          if ((str != null) && (!str.equalsIgnoreCase(".gif"))) {
            b.add(localo);
          }
        }
      }
    }
  }
  
  protected boolean a(q paramq)
  {
    return false;
  }
  
  public void b()
  {
    l.c(getClass().getSimpleName(), "finish!");
    Collections.sort(b, g);
    Object localObject1 = new ArrayList();
    Object localObject2 = b.iterator();
    long l1 = 0L;
    if (((Iterator)localObject2).hasNext())
    {
      o localo = (o)((Iterator)localObject2).next();
      if (localo.d() != l1) {
        l1 = localo.d();
      }
      for (;;)
      {
        break;
        ((List)localObject1).add(localo);
      }
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (o)((Iterator)localObject1).next();
      b.remove(localObject2);
    }
    Collections.sort(b, f);
    int j = 0;
    int i = 1;
    if (j < b.size() - 1)
    {
      l1 = ((o)b.get(j)).i();
      long l2 = l1 - ((o)b.get(j + 1)).i();
      int k = ((o)b.get(j)).j() - ((o)b.get(j + 1)).j();
      if ((k == ((o)b.get(j)).k() - ((o)b.get(j + 1)).k()) && (k == 0))
      {
        k = 1;
        label300:
        l.c(getClass().getSimpleName(), "t1:" + l1 + "/" + l2);
        if ((l2 >= 1000L) || (k == 0)) {
          break label536;
        }
        if (i == 0) {
          break label506;
        }
        localObject1 = new HashSet();
        c.add(localObject1);
        label378:
        if (((Set)localObject1).add(b.get(j)))
        {
          e += ((o)b.get(j)).d();
          d += 1;
        }
        if (((Set)localObject1).add(b.get(j + 1)))
        {
          e += ((o)b.get(j + 1)).d();
          d += 1;
        }
      }
      label506:
      label536:
      for (i = 0;; i = 1)
      {
        j += 1;
        break;
        k = 0;
        break label300;
        i = c.size();
        localObject1 = (Set)c.get(i - 1);
        break label378;
      }
    }
    b.clear();
  }
  
  public boolean b(List<q> paramList)
  {
    Object localObject1 = paramList.iterator();
    Object localObject2;
    label37:
    Set localSet;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (q)((Iterator)localObject1).next();
      Iterator localIterator1 = c.iterator();
      if (localIterator1.hasNext())
      {
        localSet = (Set)localIterator1.next();
        Iterator localIterator2 = localSet.iterator();
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
          paramList = (o)localIterator2.next();
        } while (!paramList.equals(localObject2));
      }
    }
    for (;;)
    {
      localSet.remove(paramList);
      break label37;
      break;
      paramList = new ArrayList();
      localObject1 = c.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Set)((Iterator)localObject1).next();
        if (((Set)localObject2).size() < 2) {
          paramList.add(localObject2);
        }
      }
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject1 = (Set)paramList.next();
        c.remove(localObject1);
      }
      return true;
      paramList = null;
    }
  }
  
  public final List<Set<o>> c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */