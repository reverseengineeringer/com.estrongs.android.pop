package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.support.v4.view.cn;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class o<G, C>
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  public static int a = 0;
  public static int b = 1;
  protected Context c;
  private final String d = "ExpandableAdapter";
  private Map<o<G, C>.x, CopyOnWriteArrayList<o<G, C>.w>> e = Collections.synchronizedMap(new LinkedHashMap());
  private CopyOnWriteArrayList<t> f = new CopyOnWriteArrayList();
  private y<G, C> g;
  private boolean h = true;
  private RecyclerView i;
  private FrameLayout j;
  private RecyclerView.OnScrollListener k;
  private boolean l = true;
  private View m;
  private RecyclerView.ViewHolder n;
  private LinearLayoutManager o;
  
  public o(Context paramContext)
  {
    c = paramContext;
  }
  
  private RecyclerView.ViewHolder a()
  {
    if ((m == null) || (n == null))
    {
      n = a(null);
      m = n.itemView;
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
      if (m != null) {
        j.removeView(m);
      }
      j.addView(m, localLayoutParams);
      m.bringToFront();
      m.setVisibility(8);
    }
    return n;
  }
  
  private t a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < f.size())) {
      return (t)f.get(paramInt);
    }
    return null;
  }
  
  private o<G, C>.x a(G paramG, List<C> paramList)
  {
    x localx = new x(this, null);
    b = false;
    a = f.size();
    c = paramG;
    paramG = new CopyOnWriteArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = paramList.next();
      w localw = new w(this, null);
      c = localObject;
      b = localx;
      paramG.add(localw);
    }
    e.put(localx, paramG);
    f.add(localx);
    return localx;
  }
  
  private void a(v paramv, G paramG, boolean paramBoolean)
  {
    RecyclerView.ViewHolder localViewHolder = a();
    a(localViewHolder, paramv, paramG, paramBoolean);
    itemView.setOnClickListener(new s(this, paramv));
    a(localViewHolder);
  }
  
  private void a(o<G, C>.x paramo)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = (CopyOnWriteArrayList)e.get(paramo);
    a = f.indexOf(paramo);
    int i3 = a;
    int i4 = localCopyOnWriteArrayList.size();
    if (i4 > 0)
    {
      int i1 = i3 + 1;
      int i2 = 0;
      while (i2 < i4)
      {
        geta = i1;
        f.add(geta, localCopyOnWriteArrayList.get(i2));
        i2 += 1;
        i1 += 1;
      }
      i1 = i3 + i4;
      while (i1 < f.size())
      {
        f.get(i1)).a = i1;
        i1 += 1;
      }
      notifyItemRangeInserted(i3 + 1, i4);
      b = true;
      notifyItemChanged(i3);
    }
  }
  
  private void b()
  {
    Object localObject = a(o.findFirstVisibleItemPosition());
    if (localObject == null)
    {
      if (m != null) {
        m.setVisibility(8);
      }
      return;
    }
    if ((localObject instanceof v)) {}
    for (localObject = (x)localObject;; localObject = (x)b)
    {
      a((v)localObject, c, b);
      return;
    }
  }
  
  private void b(int paramInt)
  {
    if (paramInt - 1 >= 0) {
      notifyItemChanged(paramInt - 1);
    }
    if (paramInt + 1 < getItemCount()) {
      notifyItemChanged(paramInt + 1);
    }
  }
  
  private void b(o<G, C>.x paramo)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = (CopyOnWriteArrayList)e.get(paramo);
    a = f.indexOf(paramo);
    int i2 = a;
    int i3 = localCopyOnWriteArrayList.size();
    if (i3 > 0)
    {
      f.removeAll(localCopyOnWriteArrayList);
      int i1 = i2 + 1;
      while (i1 < f.size())
      {
        f.get(i1)).a = i1;
        i1 += 1;
      }
      notifyItemRangeRemoved(i2 + 1, i3);
      b = false;
      notifyItemChanged(i2);
    }
  }
  
  private void c(int paramInt)
  {
    View localView1;
    View localView2;
    int i1;
    Object localObject;
    if (i.getChildCount() >= 2)
    {
      localView1 = i.getChildAt(0);
      localView2 = i.getChildAt(1);
      paramInt = i.getChildAdapterPosition(localView1);
      i1 = paramInt + 1;
      if (paramInt != -1)
      {
        localObject = a(paramInt);
        if (!(localObject instanceof v)) {
          break label132;
        }
        localObject = (x)localObject;
        paramInt = 1;
        if (paramInt == 0) {
          break label159;
        }
        localView1 = m;
        if (!b) {
          break label153;
        }
        paramInt = 0;
        label94:
        localView1.setVisibility(paramInt);
        m.bringToFront();
        cn.b(m, 0.0F);
      }
    }
    for (;;)
    {
      a((v)localObject, c, b);
      return;
      label132:
      localObject = (x)b;
      paramInt = 0;
      break;
      label153:
      paramInt = 8;
      break label94;
      label159:
      if (i1 < getItemCount())
      {
        if ((a(i1) instanceof v))
        {
          m.setVisibility(0);
          m.bringToFront();
          paramInt = o.getBottomDecorationHeight(localView1);
          float f1 = cn.v(localView2);
          i1 = m.getHeight();
          cn.b(m, f1 - i1 - paramInt);
        }
        else
        {
          m.setVisibility(0);
          m.bringToFront();
          cn.b(m, 0.0F);
        }
      }
      else
      {
        m.setVisibility(0);
        m.bringToFront();
        cn.b(m, 0.0F);
      }
    }
  }
  
  public abstract RecyclerView.ViewHolder a(ViewGroup paramViewGroup);
  
  public abstract void a(RecyclerView.ViewHolder paramViewHolder);
  
  public abstract void a(RecyclerView.ViewHolder paramViewHolder, u paramu, C paramC);
  
  public abstract void a(RecyclerView.ViewHolder paramViewHolder, v paramv, G paramG, boolean paramBoolean);
  
  public void a(u paramu)
  {
    if (paramu != null)
    {
      v localv = b;
      ((CopyOnWriteArrayList)e.get(localv)).remove(paramu);
      int i1 = f.indexOf(paramu);
      if (i1 != -1)
      {
        f.remove(i1);
        notifyItemRemoved(i1);
        b(i1);
      }
    }
  }
  
  public void a(y<G, C> paramy)
  {
    g = paramy;
  }
  
  public void a(Map<G, List<C>> paramMap)
  {
    e.clear();
    f.clear();
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        a(localObject, (List)paramMap.get(localObject));
      }
    }
    notifyDataSetChanged();
  }
  
  public abstract RecyclerView.ViewHolder b(ViewGroup paramViewGroup);
  
  public int getItemCount()
  {
    return f.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    t localt = a(paramInt);
    if ((localt != null) && (localt.getClass() == x.class)) {
      return a;
    }
    return b;
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView)
  {
    super.onAttachedToRecyclerView(paramRecyclerView);
    i = paramRecyclerView;
    if (!l) {
      return;
    }
    paramRecyclerView = (ViewGroup)i.getParent();
    j = new FrameLayout(c);
    paramRecyclerView.removeView(i);
    j.addView(i, i.getLayoutParams());
    paramRecyclerView.addView(j, i.getLayoutParams());
    k = new r(this);
    i.addOnScrollListener(k);
    a();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    Object localObject = a(paramInt);
    if (localObject == null) {
      return;
    }
    if (getItemViewType(paramInt) == a)
    {
      localObject = (x)localObject;
      a(paramViewHolder, (v)localObject, c, b);
      itemView.setOnClickListener(new p(this, (x)localObject, paramInt));
      return;
    }
    localObject = (w)localObject;
    a(paramViewHolder, (u)localObject, c);
    itemView.setOnClickListener(new q(this, paramInt, (w)localObject));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == a) {
      return a(paramViewGroup);
    }
    return b(paramViewGroup);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */