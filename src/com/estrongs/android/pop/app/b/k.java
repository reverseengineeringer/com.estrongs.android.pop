package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.Pair;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.scanner.g;
import com.estrongs.android.util.bk;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class k
{
  com.estrongs.android.scanner.h a = new l(this);
  private Context b;
  private RecyclerView c;
  private com.estrongs.android.pop.app.b.a.a d;
  private x e;
  private List<b> f;
  private List<com.estrongs.fs.h> g;
  private List<com.estrongs.fs.h> h;
  private List<String> i;
  private long j;
  private long k;
  private int l;
  private int m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private Handler s = new p(this);
  private g t = new q(this);
  private c u = new r(this);
  private Comparator<Pair<Long, List<b>>> v = new w(this);
  private Comparator<com.estrongs.fs.h> w = new n(this);
  private Comparator<b> x = new o(this);
  
  public k(Context paramContext, RecyclerView paramRecyclerView)
  {
    b = paramContext;
    c = paramRecyclerView;
    e();
  }
  
  private List<Pair<Long, List<b>>> a(long paramLong1, long paramLong2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(a(paramLong1, paramLong2, 51));
    Collections.sort(localArrayList, v);
    return localArrayList;
  }
  
  private List<Pair<Long, List<b>>> a(long paramLong1, long paramLong2, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    long l1;
    label68:
    Object localObject2;
    long l2;
    int i1;
    label160:
    long l3;
    label179:
    Object localObject3;
    switch (paramInt)
    {
    default: 
      localObject1 = "net://";
      localObject1 = com.estrongs.fs.impl.r.a.a(b, (String)localObject1);
      Collections.sort((List)localObject1, w);
      localObject1 = ((List)localObject1).iterator();
      l1 = 0L;
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (com.estrongs.fs.h)((Iterator)localObject1).next();
          if ((localObject2 instanceof com.estrongs.fs.impl.r.b))
          {
            l2 = timeForLog;
            if ((l2 == 0L) || (l2 == -1L) || (l2 > paramLong1) || (l2 < paramLong2)) {
              break label400;
            }
            i1 = (int)(paramLong1 - l2);
            if (i1 <= 3600000L)
            {
              l2 = 60000L;
              if (i1 % l2 != 0L) {
                break label321;
              }
              l3 = i1 / l2;
              l2 = (int)(l2 * l3);
              if (l1 != l2) {
                break label334;
              }
              localObject3 = (Pair)localArrayList.get(localArrayList.size() - 1);
              localObject3 = (b)((List)second).get(((List)second).size() - 1);
              i.add(localObject2);
              j = i.size();
            }
          }
        }
      }
    }
    label321:
    label334:
    label400:
    for (;;)
    {
      break label68;
      localObject1 = "net://";
      break;
      localObject1 = "ftp://";
      break;
      if (i1 <= 86400000L)
      {
        l2 = 3600000L;
        break label160;
      }
      l2 = 86400000L;
      break label160;
      l3 = i1 / l2 + 1L;
      break label179;
      localObject3 = new ArrayList();
      localObject2 = a((com.estrongs.fs.h)localObject2, paramInt);
      if (localObject2 != null)
      {
        ((List)localObject3).add(localObject2);
        localArrayList.add(new Pair(Long.valueOf(l2), localObject3));
        l1 = l2;
        continue;
        return localArrayList;
      }
    }
  }
  
  private void e()
  {
    m = 200;
    d = new com.estrongs.android.pop.app.b.a.a(b);
    f = new CopyOnWriteArrayList();
    g = new ArrayList();
    h = new ArrayList();
    i = new ArrayList();
    c.setLayoutManager(new y(this, b));
    c.setNestedScrollingEnabled(false);
    if ((c.getAdapter() instanceof com.estrongs.android.ui.c.a))
    {
      r = true;
      if (!bk.p()) {
        ((com.estrongs.android.ui.c.a)c.getAdapter()).a(d);
      }
    }
    for (;;)
    {
      c.addOnScrollListener(new t(this));
      if (!FexApplication.a) {
        break;
      }
      com.estrongs.android.scanner.a.a().a(a);
      return;
      r = false;
      c.setAdapter(d);
    }
    d.a(new u(this));
  }
  
  private void f()
  {
    if (p) {
      return;
    }
    p = true;
    if (d != null) {
      d.a(true);
    }
    new v(this).start();
  }
  
  private void g()
  {
    j();
    l = 0;
    if (f.size() > 0) {}
    for (int i1 = f.size();; i1 = 200)
    {
      m = i1;
      f.clear();
      g.clear();
      i.clear();
      q = false;
      i();
      return;
    }
  }
  
  private void h()
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      Object localObject1 = i.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (com.estrongs.fs.h)((Iterator)localObject1).next();
        if ((localObject2 instanceof i))
        {
          localObject2 = (i)localObject2;
          if (!new File(((i)localObject2).getAbsolutePath()).exists()) {
            i.remove(localObject2);
          }
        }
      }
      if ((i == null) || (i.size() <= 0))
      {
        int i1 = f.indexOf(localb);
        if (f) {
          if (i1 < f.size() - 1)
          {
            localObject1 = (b)f.get(i1 + 1);
            if (!f) {
              f = true;
            }
            if (i1 == 0)
            {
              h = true;
              k = r;
            }
          }
        }
        for (;;)
        {
          f.remove(localb);
          break;
          if ((i1 != 0) && (i1 < f.size() - 1) && (f.get(i1 + 1)).f)) {
            f.get(i1 - 1)).g = true;
          }
        }
      }
    }
  }
  
  private void i()
  {
    Object localObject1;
    long l1;
    if (FexApplication.a)
    {
      localObject1 = com.estrongs.android.scanner.a.a().a(j, k, m, t);
      if ((localObject1 == null) || (((List)localObject1).size() <= 0)) {
        break label859;
      }
      localObject2 = (List)getsize1second;
      l1 = getsize1b;
    }
    label279:
    label421:
    label696:
    label717:
    label859:
    for (Object localObject2 = a(k, l1);; localObject2 = null)
    {
      Object localObject3;
      Pair localPair;
      int i1;
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        localObject3 = new Pair[((List)localObject1).size()];
        ((List)localObject1).toArray((Object[])localObject3);
        localObject2 = ((List)localObject2).iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label279;
          }
          localPair = (Pair)((Iterator)localObject2).next();
          i1 = Arrays.binarySearch((Object[])localObject3, localPair, v);
          if (i1 < 0)
          {
            ((List)localObject1).add(localPair);
            continue;
            localObject1 = d.a(k, t);
            break;
          }
          ((List)getsecond).addAll((Collection)second);
          Collections.sort((List)getsecond, x);
        }
      }
      if (localObject1 != null)
      {
        Collections.sort((List)localObject1, v);
        localObject3 = ((List)localObject1).iterator();
        i1 = 0;
        for (;;)
        {
          i2 = i1;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
          localPair = (Pair)((Iterator)localObject3).next();
          int i3 = ((List)second).size();
          if (((Long)first).longValue() < 3600000L)
          {
            i2 = (int)Math.floor((float)((Long)first).longValue() * 1.0F / 60000.0F);
            if (i2 >= 1)
            {
              localObject1 = b.getResources().getQuantityString(2131689474, i2, new Object[] { Integer.valueOf(i2) });
              i2 = 0;
              localObject2 = null;
              if (i2 >= ((List)second).size()) {
                break label717;
              }
              localObject2 = (b)((List)second).get(i2);
              if (i2 == 0)
              {
                if (!i.contains(localObject1)) {
                  break label696;
                }
                if (f.size() > 0) {
                  f.get(f.size() - 1)).g = false;
                }
              }
            }
          }
          for (;;)
          {
            a = ((String)localObject1);
            l = u;
            g.addAll(i);
            i2 += 1;
            break label421;
            localObject1 = b.getResources().getString(2131231675);
            break;
            if (((Long)first).longValue() < 86400000L)
            {
              i2 = (int)Math.floor((float)((Long)first).longValue() * 1.0F / 3600000.0F);
              localObject1 = b.getResources().getQuantityString(2131689473, i2, new Object[] { Integer.valueOf(i2) });
              break;
            }
            i2 = (int)Math.floor((float)((Long)first).longValue() * 1.0F / 8.64E7F);
            localObject1 = b.getResources().getQuantityString(2131689472, i2, new Object[] { Integer.valueOf(i2) });
            break;
            f = true;
            i.add(localObject1);
          }
          if (localObject2 != null) {
            g = true;
          }
          f.addAll((Collection)second);
          i1 += i3;
        }
      }
      int i2 = 0;
      if (i2 == 0)
      {
        q = true;
        if (d != null) {
          d.a(false);
        }
      }
      if (f.size() > 0)
      {
        f.get(0)).h = true;
        f.get(0)).k = r;
        k = f.get(f.size() - 1)).b;
      }
      return;
    }
  }
  
  private long j()
  {
    j = new Date().getTime();
    k = j;
    return j;
  }
  
  private void k()
  {
    if ((c == null) || (c.getAdapter() == null)) {
      return;
    }
    if ((c.getAdapter() instanceof com.estrongs.android.ui.c.a))
    {
      if (f.size() > 0)
      {
        c.getAdapter().notifyItemRangeChanged(com.estrongs.android.ui.c.a.a, d.getItemCount());
        return;
      }
      c.getAdapter().notifyDataSetChanged();
      return;
    }
    d.notifyDataSetChanged();
  }
  
  protected b a(com.estrongs.fs.h paramh, int paramInt)
  {
    if (!(paramh instanceof com.estrongs.fs.impl.r.b)) {
      return null;
    }
    b localb = new b();
    b = timeForLog;
    i.add(paramh);
    j = i.size();
    switch (paramInt)
    {
    default: 
      e = "net://";
      d = b.getResources().getString(2131231682);
      c = 51;
    }
    for (;;)
    {
      return localb;
      e = "net://";
      d = b.getResources().getString(2131231682);
      c = 51;
      continue;
      e = "ftp://";
      d = b.getResources().getString(2131231681);
      c = 52;
    }
  }
  
  public void a()
  {
    com.estrongs.android.scanner.a.a().b(a);
  }
  
  public void a(x paramx)
  {
    e = paramx;
  }
  
  public void a(boolean paramBoolean)
  {
    if (o) {}
    while (n) {
      return;
    }
    o = true;
    p = false;
    if ((e != null) && (paramBoolean)) {
      e.a();
    }
    new s(this, paramBoolean).start();
  }
  
  public List<com.estrongs.fs.h> b()
  {
    return g;
  }
  
  public void c()
  {
    n = false;
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      nexta = false;
    }
    h.clear();
    k();
  }
  
  public List<com.estrongs.fs.h> d()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */