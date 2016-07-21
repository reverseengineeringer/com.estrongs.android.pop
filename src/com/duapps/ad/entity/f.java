package com.duapps.ad.entity;

import android.content.Context;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.d;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

public class f
  implements com.duapps.ad.entity.a.c
{
  private static final String a = com.duapps.ad.f.class.getSimpleName();
  private static WeakHashMap<View, WeakReference<f>> f = new WeakHashMap();
  private Context b;
  private List<View> c;
  private View d;
  private AdData e;
  private g g;
  private com.duapps.ad.stats.c h;
  private d i;
  private View.OnTouchListener j;
  
  public f(Context paramContext, AdData paramAdData, d paramd)
  {
    e = paramAdData;
    b = paramContext;
    i = paramd;
    c = new ArrayList();
  }
  
  private void a(List<View> paramList, View paramView)
  {
    paramList.add(paramView);
    if (!(paramView instanceof ViewGroup)) {}
    for (;;)
    {
      return;
      paramView = (ViewGroup)paramView;
      int m = paramView.getChildCount();
      int k = 0;
      while (k < m)
      {
        a(paramList, paramView.getChildAt(k));
        k += 1;
      }
    }
  }
  
  private void b(View paramView)
  {
    c.add(paramView);
    paramView.setOnClickListener(g);
    paramView.setOnTouchListener(g);
  }
  
  private boolean b()
  {
    return e != null;
  }
  
  private void p()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      localView.setOnClickListener(null);
      localView.setOnTouchListener(null);
    }
    c.clear();
  }
  
  public void a(View paramView)
  {
    ArrayList localArrayList = new ArrayList();
    a(localArrayList, paramView);
    a(paramView, localArrayList);
  }
  
  public void a(View paramView, List<View> paramList)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("Must provide a view");
    }
    if ((paramList == null) || (paramList.size() == 0)) {
      throw new IllegalArgumentException("Invalid set of clickable views");
    }
    if (!b()) {
      l.d(a, "Ad not loaded");
    }
    if (d != null)
    {
      l.b(a, "Native Ad was already registered with a View, Auto unregistering and proceeding");
      c();
    }
    if ((f.containsKey(paramView)) && (((WeakReference)f.get(paramView)).get() != null)) {
      ((f)((WeakReference)f.get(paramView)).get()).c();
    }
    g = new g(this);
    d = paramView;
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      b((View)paramList.next());
    }
    f.put(paramView, new WeakReference(this));
    u.h(b, new p(e));
    if ((e.E != null) && (e.E.length > 0) && (ap.a(b))) {
      u.b(e);
    }
  }
  
  public void a(d paramd)
  {
    i = paramd;
  }
  
  public void c()
  {
    if (d == null) {
      return;
    }
    if ((!f.containsKey(d)) || (((WeakReference)f.get(d)).get() != this)) {
      throw new IllegalArgumentException("View not regitered with this NativeAd");
    }
    f.remove(d);
    p();
    d = null;
  }
  
  public void d() {}
  
  public String e()
  {
    if (!b()) {
      return null;
    }
    return e.s;
  }
  
  public String f()
  {
    if (!b()) {
      return null;
    }
    return e.g;
  }
  
  public String g()
  {
    if (!b()) {
      return null;
    }
    return e.A;
  }
  
  public String h()
  {
    if (!b()) {
      return null;
    }
    return e.e;
  }
  
  public String i()
  {
    if (!b()) {
      return null;
    }
    return e.b;
  }
  
  public float j()
  {
    if (!b()) {
      return 0.0F;
    }
    return e.k;
  }
  
  public int k()
  {
    return 1;
  }
  
  public String l()
  {
    if (!b()) {
      return null;
    }
    return e.t;
  }
  
  public String m()
  {
    if (!b()) {
      return null;
    }
    return e.c;
  }
  
  public String n()
  {
    return e.y + "_" + e.n;
  }
  
  public int o()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */