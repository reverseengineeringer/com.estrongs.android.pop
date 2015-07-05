package com.estrongs.android.view;

import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.d.k;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ac
  extends ea
{
  private LinearLayout a;
  private Button b;
  private Button c;
  List<h> d = new LinkedList();
  u e;
  k f = null;
  protected LinearLayout g = null;
  LinearLayout.LayoutParams h = new LinearLayout.LayoutParams(0, -2);
  protected BaseAdapter i;
  private boolean j = true;
  private al k;
  
  public ac(u paramu, List<h> paramList, boolean paramBoolean)
  {
    super(paramu.a());
    d.addAll(paramList);
    e = paramu;
    j = paramBoolean;
    g();
  }
  
  private void g()
  {
    k = al.a(ad);
    a = ((LinearLayout)k(2131362443));
    h.weight = 1.0F;
    if (i == null) {
      i = b();
    }
    i.notifyDataSetChanged();
    b = ((Button)k(2131362445));
    b.setBackgroundDrawable(al.a(ae).a(2130837585, 2130837586));
    c = ((Button)k(2131362444));
    c.setBackgroundDrawable(al.a(ae).a(2130837583, 2130837584));
    b.setOnClickListener(new ad(this));
    c.setOnClickListener(new ae(this));
  }
  
  private void h()
  {
    f = new ah(this, "ThumnailLoader - ClipboardItem");
  }
  
  protected int a()
  {
    return 2130903175;
  }
  
  public void a(u paramu)
  {
    e = paramu;
  }
  
  protected void a(List<h> paramList)
  {
    e.a(paramList, Boolean.valueOf(j));
  }
  
  protected BaseAdapter b()
  {
    return new af(this);
  }
  
  public void c()
  {
    a(d);
    if (!j) {
      e.b(this);
    }
  }
  
  public List<h> d()
  {
    return d;
  }
  
  protected void e()
  {
    a.removeAllViews();
    int n = a.a(ar(), 5.0F);
    int m = 0;
    while (m < i.getCount())
    {
      if (m % 4 == 0)
      {
        g = new LinearLayout(ad);
        if (m == 0) {
          g.setPadding(0, n, 0, 0);
        }
        g.setOrientation(0);
        a.addView(g);
      }
      g.addView(i.getView(m, null, null), h);
      m += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ac)) {}
    do
    {
      return false;
      paramObject = (ac)paramObject;
    } while ((d.size() != d.size()) || (!d.containsAll(d)));
    return true;
  }
  
  public boolean f()
  {
    return j;
  }
  
  public int hashCode()
  {
    Iterator localIterator = d.iterator();
    int m = 0;
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject == null) {}
      for (int n = 0;; n = localObject.hashCode())
      {
        m += n;
        break;
      }
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */