package com.estrongs.android.view;

import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class af
  extends gf
{
  private LinearLayout a;
  private Button b;
  private Button c;
  List<h> d = new LinkedList();
  y e;
  protected LinearLayout f = null;
  LinearLayout.LayoutParams g = new LinearLayout.LayoutParams(0, -2);
  protected BaseAdapter h;
  private boolean i = true;
  private at j;
  
  public af(y paramy, List<h> paramList, boolean paramBoolean)
  {
    super(paramy.a());
    d.addAll(paramList);
    e = paramy;
    i = paramBoolean;
    g();
  }
  
  private void g()
  {
    j = at.a(ag);
    a = ((LinearLayout)b(2131625064));
    g.weight = 1.0F;
    if (h == null) {
      h = b();
    }
    h.notifyDataSetChanged();
    b = ((Button)b(2131625066));
    c = ((Button)b(2131625065));
    b.setOnClickListener(new ag(this));
    c.setOnClickListener(new ah(this));
  }
  
  protected int a()
  {
    return 2130903289;
  }
  
  public void a(y paramy)
  {
    e = paramy;
  }
  
  protected void a(List<h> paramList)
  {
    e.a(paramList, Boolean.valueOf(i));
  }
  
  protected BaseAdapter b()
  {
    return new ai(this);
  }
  
  public void c()
  {
    a(d);
    if (!i) {
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
    int m = g.a(aF(), 15.0F);
    int k = 0;
    while (k < h.getCount())
    {
      if (k % 4 == 0)
      {
        f = new LinearLayout(ag);
        f.setPadding(0, m, 0, 0);
        f.setOrientation(0);
        a.addView(f);
      }
      f.addView(h.getView(k, null, null), g);
      k += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof af)) {}
    do
    {
      return false;
      paramObject = (af)paramObject;
    } while ((d.size() != d.size()) || (!d.containsAll(d)));
    return true;
  }
  
  public boolean f()
  {
    return i;
  }
  
  public int hashCode()
  {
    Iterator localIterator = d.iterator();
    int k = 0;
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject == null) {}
      for (int m = 0;; m = localObject.hashCode())
      {
        k += m;
        break;
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */