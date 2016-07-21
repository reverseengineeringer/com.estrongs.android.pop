package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.android.pop.app.analysis.viewholders.s;
import com.estrongs.android.pop.app.analysis.viewholders.t;
import com.estrongs.android.pop.app.analysis.viewholders.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.d;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;

public class i
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  protected Context a;
  protected CopyOnWriteArrayList<g> b;
  protected CopyOnWriteArrayList<g> c;
  protected AtomicLong d = new AtomicLong();
  protected m e;
  protected n f;
  protected boolean g = true;
  protected int h;
  protected String i;
  protected String j;
  public final int k = 0;
  public final int l = 1;
  public final int m = 2;
  public final int n = 3;
  private int o;
  
  public i(Context paramContext, int paramInt, String paramString)
  {
    a = paramContext;
    b = new CopyOnWriteArrayList();
    c = new CopyOnWriteArrayList();
    h = paramInt;
    i = paramString;
  }
  
  public int a(g paramg)
  {
    return b.indexOf(paramg);
  }
  
  public g a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < b.size())) {
      return (g)b.get(paramInt);
    }
    return null;
  }
  
  public void a()
  {
    b.clear();
    c.clear();
  }
  
  public void a(m paramm)
  {
    e = paramm;
  }
  
  public void a(n paramn)
  {
    f = paramn;
  }
  
  public void a(g paramg, int paramInt)
  {
    boolean bool;
    long l1;
    if (!a)
    {
      bool = true;
      a = bool;
      long l2 = b.length();
      l1 = l2;
      if (l2 <= 0L) {
        l1 = 0L;
      }
      if (!a) {
        break label99;
      }
      c.add(paramg);
      d.addAndGet(l1);
    }
    for (;;)
    {
      if (e != null) {
        e.a(d.get());
      }
      notifyItemChanged(paramInt);
      return;
      bool = false;
      break;
      label99:
      c.remove(paramg);
      d.addAndGet(-l1);
    }
  }
  
  public void a(String paramString)
  {
    j = paramString;
  }
  
  public void a(List<g> paramList)
  {
    if (paramList != null) {
      b.addAll(paramList);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public CopyOnWriteArrayList<g> b()
  {
    return c;
  }
  
  public void b(int paramInt)
  {
    if ((paramInt != -1) && (paramInt < getItemCount()))
    {
      long l2 = b.remove(paramInt)).b.length();
      long l1 = l2;
      if (l2 <= 0L) {
        l1 = 0L;
      }
      d.addAndGet(-l1);
    }
  }
  
  public void b(g paramg)
  {
    b.add(paramg);
  }
  
  public int c()
  {
    return c.size();
  }
  
  public int c(g paramg)
  {
    long l1 = 0L;
    int i1 = b.indexOf(paramg);
    long l2;
    if (i1 != -1)
    {
      b.remove(i1);
      l2 = b.length();
      if (l2 > 0L) {
        break label55;
      }
    }
    for (;;)
    {
      d.addAndGet(-l1);
      return i1;
      label55:
      l1 = l2;
    }
  }
  
  public void c(int paramInt)
  {
    o = paramInt;
  }
  
  public void d()
  {
    c.clear();
    d.set(0L);
    if (e != null) {
      e.a(0L);
    }
  }
  
  public long e()
  {
    return d.get();
  }
  
  public void f()
  {
    c.clear();
    d.set(0L);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      a = true;
      long l2 = b.length();
      long l1 = l2;
      if (l2 <= 0L) {
        l1 = 0L;
      }
      c.add(localg);
      d.addAndGet(l1);
    }
    notifyDataSetChanged();
    if (e != null) {
      e.a(d.get());
    }
  }
  
  public void g()
  {
    c.clear();
    d.set(0L);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexta = false;
    }
    notifyDataSetChanged();
    if (e != null) {
      e.a(d.get());
    }
  }
  
  public int getItemCount()
  {
    return b.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    g localg = a(paramInt);
    if (h == 4) {
      return 1;
    }
    if ((h == 6) && (j != null) && ((ap.aY(j)) || (ap.X(j))) && (!(b instanceof d)))
    {
      if (b.getFileType() == w.a) {
        return 2;
      }
      return 3;
    }
    return 0;
  }
  
  public int[] h()
  {
    int i2;
    int i1;
    int i3;
    if (c.size() >= 2)
    {
      Object localObject = (g)c.get(0);
      i2 = b.indexOf(localObject);
      localObject = c.iterator();
      i1 = i2;
      if (((Iterator)localObject).hasNext())
      {
        g localg = (g)((Iterator)localObject).next();
        i3 = b.indexOf(localg);
        if (i1 > i3) {
          i1 = i3;
        }
      }
    }
    for (;;)
    {
      break;
      if (i2 < i3)
      {
        i2 = i3;
        continue;
        return new int[] { i1, i2 };
        return null;
      }
    }
  }
  
  public void i()
  {
    int[] arrayOfInt = h();
    if (arrayOfInt != null)
    {
      c.clear();
      d.set(0L);
      int i1 = arrayOfInt[0];
      while (i1 <= arrayOfInt[1])
      {
        g localg = (g)b.get(i1);
        a = true;
        long l2 = b.length();
        long l1 = l2;
        if (l2 <= 0L) {
          l1 = 0L;
        }
        c.add(localg);
        d.addAndGet(l1);
        i1 += 1;
      }
      notifyDataSetChanged();
      if (e != null) {
        e.a(d.get());
      }
    }
  }
  
  public boolean j()
  {
    boolean bool = true;
    if (c.size() <= 1) {}
    int[] arrayOfInt;
    do
    {
      return false;
      arrayOfInt = h();
    } while (arrayOfInt == null);
    if (arrayOfInt[1] - arrayOfInt[0] >= c.size()) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public boolean k()
  {
    return g;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    g localg = a(paramInt);
    j localj = new j(this, localg);
    if ((paramViewHolder instanceof t))
    {
      t localt = (t)paramViewHolder;
      localt.a(o);
      localt.a(localg, k());
      h.setOnClickListener(localj);
    }
    itemView.setOnClickListener(new k(this, localg));
    itemView.setOnLongClickListener(new l(this, localg));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 1) {
      return new s(LayoutInflater.from(a).inflate(2130903094, paramViewGroup, false), i);
    }
    if (paramInt == 3) {
      return new u(LayoutInflater.from(a).inflate(2130903084, paramViewGroup, false));
    }
    if (paramInt == 2) {
      return new u(LayoutInflater.from(a).inflate(2130903085, paramViewGroup, false));
    }
    return new t(LayoutInflater.from(a).inflate(2130903095, paramViewGroup, false), i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */