package com.duapps.ad.inmobi;

import android.content.Context;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.duapps.ad.base.an;
import com.duapps.ad.d;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

public class l
  implements com.duapps.ad.entity.a.c
{
  private static WeakHashMap<View, WeakReference<l>> e = new WeakHashMap();
  private Context a;
  private List<View> b;
  private View c;
  private IMData d;
  private m f;
  private com.duapps.ad.stats.c g;
  private d h;
  private View.OnTouchListener i;
  
  public l(Context paramContext, IMData paramIMData, d paramd)
  {
    d = paramIMData;
    a = paramContext;
    h = paramd;
    b = new ArrayList();
  }
  
  private void a(List<View> paramList, View paramView)
  {
    paramList.add(paramView);
    if (!(paramView instanceof ViewGroup)) {}
    for (;;)
    {
      return;
      paramView = (ViewGroup)paramView;
      int k = paramView.getChildCount();
      int j = 0;
      while (j < k)
      {
        a(paramList, paramView.getChildAt(j));
        j += 1;
      }
    }
  }
  
  private boolean a()
  {
    return d != null;
  }
  
  private void b()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      localView.setOnClickListener(null);
      localView.setOnTouchListener(null);
    }
    b.clear();
  }
  
  private void b(View paramView)
  {
    b.add(paramView);
    paramView.setOnClickListener(f);
    paramView.setOnTouchListener(f);
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
    if (!a()) {
      com.duapps.ad.base.l.d("NativeAdIMWrapper", "Ad not loaded");
    }
    if (c != null)
    {
      com.duapps.ad.base.l.b("NativeAdIMWrapper", "Native Ad was already registered with a View, Auto unregistering and proceeding");
      c();
    }
    if ((e.containsKey(paramView)) && (((WeakReference)e.get(paramView)).get() != null)) {
      ((l)((WeakReference)e.get(paramView)).get()).c();
    }
    f = new m(this);
    c = paramView;
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      b((View)paramList.next());
    }
    e.put(paramView, new WeakReference(this));
    u.h(a, new p(d));
    an.a().a(new k(a, false, d));
  }
  
  public void a(d paramd)
  {
    h = paramd;
  }
  
  public void c()
  {
    if (c == null) {
      return;
    }
    if ((!e.containsKey(c)) || (((WeakReference)e.get(c)).get() != this)) {
      throw new IllegalArgumentException("View not regitered with this NativeAd");
    }
    e.remove(c);
    b();
    c = null;
  }
  
  public void d()
  {
    b();
    if (c != null)
    {
      e.remove(c);
      c = null;
    }
  }
  
  public String e()
  {
    if (!a()) {
      return null;
    }
    return d.s;
  }
  
  public String f()
  {
    if (!a()) {
      return null;
    }
    return d.g;
  }
  
  public String g()
  {
    if (!a()) {
      return null;
    }
    return d.A;
  }
  
  public String h()
  {
    if (!a()) {
      return null;
    }
    return d.e;
  }
  
  public String i()
  {
    if (!a()) {
      return null;
    }
    return d.b;
  }
  
  public float j()
  {
    if (!a()) {
      return 0.0F;
    }
    return d.q;
  }
  
  public int k()
  {
    return 3;
  }
  
  public String l()
  {
    return null;
  }
  
  public String m()
  {
    return null;
  }
  
  public String n()
  {
    return "inmobi";
  }
  
  public int o()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */