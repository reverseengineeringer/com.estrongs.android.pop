package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.drag.d;
import com.estrongs.android.ui.drag.j;
import com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller;
import com.estrongs.android.ui.recycler.l;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.FlingChangeRecyclerView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class cg<T>
  extends gf
{
  private float a = 0.0F;
  public final long f = System.currentTimeMillis();
  protected GridLayoutManager g;
  protected RecyclerView h;
  protected cg<T>.ck<T> i;
  protected co j;
  protected cp k;
  protected cq<T> l;
  protected View m;
  protected TextView n;
  protected ImageView o;
  protected int p;
  protected boolean q = false;
  protected SortedMap<Integer, T> r = new TreeMap();
  protected Map<String, j> s = new HashMap();
  protected d t;
  protected LinearLayout u = null;
  protected TextView v = null;
  protected VerticalRecyclerViewFastScroller w;
  protected boolean x = false;
  
  public cg(Activity paramActivity)
  {
    super(paramActivity);
    n();
  }
  
  protected RecyclerView F()
  {
    RecyclerView localRecyclerView = (RecyclerView)b(2131624587);
    if ((localRecyclerView instanceof FlingChangeRecyclerView)) {
      ((FlingChangeRecyclerView)localRecyclerView).setFlingScale(0.85D);
    }
    return localRecyclerView;
  }
  
  protected void G()
  {
    i = new ck(this);
    h.setAdapter(i);
    i.registerAdapterDataObserver(new ch(this));
  }
  
  public void H()
  {
    U();
    u.setVisibility(0);
    h.setVisibility(8);
  }
  
  public void I()
  {
    U();
    if (n != null) {
      n.setText("");
    }
    u.setVisibility(0);
    v.setText(2131232253);
    h.setVisibility(8);
  }
  
  public void J()
  {
    x = true;
    u.setVisibility(8);
    h.setVisibility(0);
  }
  
  public void K()
  {
    r.clear();
    e(true);
  }
  
  public boolean L()
  {
    int[] arrayOfInt = M();
    return (arrayOfInt != null) && (arrayOfInt[1] - arrayOfInt[0] >= r.size());
  }
  
  protected int[] M()
  {
    if (r.size() >= 2) {
      return new int[] { ((Integer)r.firstKey()).intValue(), ((Integer)r.lastKey()).intValue() };
    }
    return null;
  }
  
  public boolean N()
  {
    return q;
  }
  
  public float O()
  {
    return a;
  }
  
  public int P()
  {
    return p;
  }
  
  public RecyclerView Q()
  {
    return h;
  }
  
  public Map<String, j> R()
  {
    return s;
  }
  
  public VerticalRecyclerViewFastScroller S()
  {
    return w;
  }
  
  protected GridLayoutManager T()
  {
    return new cj(this, ag, 4);
  }
  
  protected void U()
  {
    if (m != null) {
      m.setVisibility(8);
    }
  }
  
  protected int a()
  {
    return 2130903339;
  }
  
  public void a(int paramInt)
  {
    int i1 = 5;
    p = paramInt;
    DisplayMetrics localDisplayMetrics = ag.getResources().getDisplayMetrics();
    boolean bool = cu.a(ag);
    int i2;
    if (ag.getResources().getConfiguration().orientation == 1)
    {
      i2 = 1;
      if (paramInt != 0) {
        break label204;
      }
      if (!bool) {
        break label117;
      }
      paramInt = 4;
      label59:
      g.setSpanCount(paramInt);
    }
    for (;;)
    {
      a = ((int)((widthPixels - (8.0F * density + 0.5F)) / paramInt - (12.0F * density + 0.5F)));
      e();
      return;
      i2 = 0;
      break;
      label117:
      float f1 = widthPixels / densityDpi * 25.4F;
      if (i2 != 0)
      {
        if (f1 < 50.0F)
        {
          paramInt = 3;
          break label59;
        }
        paramInt = i1;
        if (f1 > 60.0F) {
          break label59;
        }
        paramInt = 4;
        break label59;
      }
      paramInt = (int)(f1 / 13.0F + 0.5F);
      if (!at.a(ag).o())
      {
        paramInt -= 2;
        break label59;
      }
      paramInt -= 1;
      break label59;
      label204:
      if (paramInt == 2)
      {
        if (bool) {
          paramInt = 6;
        }
        for (;;)
        {
          g.setSpanCount(paramInt);
          break;
          f1 = widthPixels / densityDpi * 25.4F;
          if (i2 != 0)
          {
            paramInt = i1;
            if (f1 >= 50.0F) {
              if (f1 > 60.0F) {
                paramInt = 7;
              } else {
                paramInt = 6;
              }
            }
          }
          else
          {
            paramInt = (int)(f1 / 8.0F + 0.5F);
            if (!at.a(ag).o()) {
              paramInt -= 2;
            } else {
              paramInt -= 1;
            }
          }
        }
      }
      if (paramInt == 1)
      {
        if (bool) {
          paramInt = i1;
        }
        for (;;)
        {
          g.setSpanCount(paramInt);
          break;
          f1 = widthPixels / densityDpi * 25.4F;
          if (i2 != 0)
          {
            if (f1 < 50.0F)
            {
              paramInt = 4;
            }
            else
            {
              paramInt = i1;
              if (f1 > 60.0F) {
                paramInt = 6;
              }
            }
          }
          else
          {
            paramInt = (int)(f1 / 10.0F + 0.5F);
            if (!at.a(ag).o()) {
              paramInt -= 2;
            } else {
              paramInt -= 1;
            }
          }
        }
      }
      if ((bool) && (i2 == 0))
      {
        g.setSpanCount(2);
        paramInt = 1;
      }
      else
      {
        g.setSpanCount(1);
        paramInt = 1;
      }
    }
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    h.setOnTouchListener(paramOnTouchListener);
    if (m != null) {
      m.setOnTouchListener(paramOnTouchListener);
    }
    u.setOnTouchListener(paramOnTouchListener);
  }
  
  protected void a(ci paramci, View paramView, int paramInt)
  {
    if (q)
    {
      paramView = l;
      if (!paramView.isChecked())
      {
        bool = true;
        paramView.setChecked(bool);
        c(paramInt);
        if (!h(paramInt)) {
          break label129;
        }
        paramView = new j();
        paramView.a(paramInt);
        paramView.a((DragGrid)i);
        i.setBackgroundResource(2130837692);
        paramView.a(g.a(i));
        s.put(g(paramInt), paramView);
        i.setBackgroundDrawable(at.a(ag).a(2130838143));
      }
    }
    label129:
    while (j == null)
    {
      for (;;)
      {
        return;
        boolean bool = false;
      }
      s.remove(g(paramInt));
      i.setBackgroundDrawable(null);
      return;
    }
    j.a(h, itemView, paramInt);
  }
  
  protected void a(cn paramcn)
  {
    i.a(paramcn);
  }
  
  public void a(co paramco)
  {
    j = paramco;
  }
  
  public void a(cp paramcp)
  {
    k = paramcp;
  }
  
  public void a(cq<T> paramcq)
  {
    l = paramcq;
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
    if (!q)
    {
      c(-2);
      return;
    }
    e();
  }
  
  public void a_(List<T> paramList)
  {
    if (t != null) {
      i.a(t);
    }
    i.a(paramList);
  }
  
  public void c(int paramInt)
  {
    Object localObject1 = h();
    Object localObject2;
    if ((localObject1 instanceof LinkedList))
    {
      localObject2 = new ArrayList(((List)localObject1).size());
      ((List)localObject2).addAll((Collection)localObject1);
      localObject1 = localObject2;
    }
    for (;;)
    {
      int i1 = r.size();
      if (paramInt == -1)
      {
        r.clear();
        s.clear();
        localObject1 = ((List)localObject1).iterator();
        paramInt = 0;
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = ((Iterator)localObject1).next();
          r.put(Integer.valueOf(paramInt), localObject2);
          paramInt += 1;
        }
        e();
      }
      for (;;)
      {
        if ((l != null) && (i1 != r.size())) {
          l.a(o());
        }
        return;
        if (paramInt == -2)
        {
          K();
          e();
        }
        else if (paramInt == -4)
        {
          localObject2 = M();
          if (localObject2 != null)
          {
            r.clear();
            paramInt = localObject2[0];
            while (paramInt <= localObject2[1])
            {
              r.put(Integer.valueOf(paramInt), ((List)localObject1).get(paramInt));
              paramInt += 1;
            }
            e();
          }
        }
        else if ((paramInt >= 0) && (paramInt < ((List)localObject1).size()))
        {
          if (!h(paramInt)) {
            r.put(Integer.valueOf(paramInt), ((List)localObject1).get(paramInt));
          } else {
            r.remove(Integer.valueOf(paramInt));
          }
        }
      }
    }
  }
  
  public int d()
  {
    if (h() != null) {
      return h().size();
    }
    return 0;
  }
  
  public T e(int paramInt)
  {
    return (T)i.a(paramInt);
  }
  
  public void e()
  {
    if (i != null) {
      i.notifyDataSetChanged();
    }
  }
  
  public void e(String paramString)
  {
    u.setVisibility(8);
    if (n != null) {
      n.setText(paramString);
    }
  }
  
  protected void e(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = s.values().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((j)((Iterator)localObject).next()).e();
      }
      s.clear();
    }
    do
    {
      do
      {
        return;
      } while (g(0) == null);
      localObject = (j)s.remove(g(0));
    } while (localObject == null);
    j localj = new j();
    localj.a(0);
    localj.a(((j)localObject).b());
    localj.a(((j)localObject).c());
    s.put(g(0), localj);
  }
  
  public void f(int paramInt)
  {
    u.setVisibility(8);
    if (n != null) {
      n.setText(paramInt);
    }
  }
  
  public void f(String paramString)
  {
    U();
    v.setText(paramString);
    u.setVisibility(0);
    h.setVisibility(8);
  }
  
  public String g(int paramInt)
  {
    return "" + paramInt;
  }
  
  public List<T> h()
  {
    if (i != null) {
      return i.a();
    }
    return null;
  }
  
  public boolean h(int paramInt)
  {
    boolean bool = false;
    if (r.containsKey(Integer.valueOf(paramInt))) {
      bool = true;
    }
    return bool;
  }
  
  protected void m_() {}
  
  protected void n()
  {
    h = F();
    g = T();
    h.setLayoutManager(g);
    G();
    w = ((VerticalRecyclerViewFastScroller)b(2131624129));
    if (w != null)
    {
      w.setRecyclerView(h);
      if (Build.VERSION.SDK_INT >= 14) {
        break label217;
      }
      w.setVisibility(8);
      h.setVerticalScrollBarEnabled(true);
    }
    for (;;)
    {
      h.setScrollBarStyle(33554432);
      if (ad.a(ag).aZ()) {
        h.addItemDecoration(new l(ag));
      }
      m = b(16908292);
      o = ((ImageView)b(2131624585));
      n = ((TextView)b(2131624586));
      U();
      u = ((LinearLayout)b(2131624595));
      v = ((TextView)u.findViewById(2131624596));
      u.setVisibility(8);
      m_();
      return;
      label217:
      h.addOnScrollListener(w.getOnScrollListener());
      w.setVisibility(4);
      h.setVerticalScrollBarEnabled(false);
    }
  }
  
  protected void n_()
  {
    if (m != null) {
      m.setVisibility(0);
    }
  }
  
  public List<T> o()
  {
    return new ArrayList(r.values());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */