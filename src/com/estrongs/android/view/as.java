package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.OnTouchListener;
import android.widget.AbsListView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.drag.j;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.android.widget.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class as<T>
  extends ea
{
  private float a = 0.0F;
  public final long e = System.currentTimeMillis();
  protected c<T> f;
  protected HeaderGridView g;
  protected AdapterView.OnItemClickListener h;
  protected av<T> i;
  protected TextView j;
  protected int k;
  protected boolean l = false;
  protected SortedMap<Integer, T> m = new TreeMap();
  protected Map<String, j> n = new HashMap();
  protected com.estrongs.android.ui.drag.d o;
  protected LinearLayout p = null;
  protected TextView q = null;
  
  public as(Activity paramActivity)
  {
    super(paramActivity);
    n();
  }
  
  public float A()
  {
    return a;
  }
  
  public int B()
  {
    return k;
  }
  
  public AbsListView C()
  {
    return g;
  }
  
  public Map<String, j> D()
  {
    return n;
  }
  
  protected int a()
  {
    return 2130903080;
  }
  
  public void a(int paramInt)
  {
    int i1 = 5;
    k = paramInt;
    DisplayMetrics localDisplayMetrics = ad.getResources().getDisplayMetrics();
    boolean bool = cl.a(ad);
    int i2;
    if (ad.getResources().getConfiguration().orientation == 1)
    {
      i2 = 1;
      if (paramInt != 0) {
        break label181;
      }
      if (!bool) {
        break label120;
      }
      paramInt = 4;
      label59:
      g.setNumColumns(paramInt);
    }
    for (;;)
    {
      a = ((int)((widthPixels - (8.0F * density + 0.5F)) / paramInt - (12.0F * density + 0.5F)));
      f.notifyDataSetChanged();
      return;
      i2 = 0;
      break;
      label120:
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
      paramInt = (int)(f1 / 13.0F + 0.5F) - 2;
      break label59;
      label181:
      if (paramInt == 2)
      {
        if (bool) {
          paramInt = 6;
        }
        for (;;)
        {
          g.setNumColumns(paramInt);
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
            paramInt = (int)(f1 / 8.0F + 0.5F) - 2;
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
          g.setNumColumns(paramInt);
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
          else {
            paramInt = (int)(f1 / 10.0F + 0.5F) - 2;
          }
        }
      }
      if ((bool) && (i2 == 0))
      {
        g.setNumColumns(2);
        paramInt = 1;
      }
      else
      {
        g.setNumColumns(1);
        paramInt = 1;
      }
    }
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    g.setOnTouchListener(paramOnTouchListener);
    j.setOnTouchListener(paramOnTouchListener);
    p.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    h = paramOnItemClickListener;
  }
  
  public void a(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    g.setOnItemLongClickListener(paramOnItemLongClickListener);
  }
  
  public void a(av<T> paramav)
  {
    i = paramav;
  }
  
  protected void a(com.estrongs.android.widget.d paramd)
  {
    f.a(paramd);
  }
  
  public void a(boolean paramBoolean)
  {
    l = paramBoolean;
    if (!l)
    {
      c(-2);
      return;
    }
    f.notifyDataSetChanged();
  }
  
  public void b(String paramString)
  {
    p.setVisibility(8);
    j.setText(paramString);
    try
    {
      g.setEmptyView(j);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void b(List<T> paramList)
  {
    if (o != null) {
      f.a(o);
    }
    f.a(paramList);
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
      int i1 = m.size();
      if (paramInt == -1)
      {
        m.clear();
        n.clear();
        localObject1 = ((List)localObject1).iterator();
        paramInt = 0;
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = ((Iterator)localObject1).next();
          m.put(Integer.valueOf(paramInt), localObject2);
          paramInt += 1;
        }
        e();
      }
      for (;;)
      {
        if ((i != null) && (i1 != m.size())) {
          i.a(w());
        }
        return;
        if (paramInt == -2)
        {
          v();
          e();
        }
        else if (paramInt == -4)
        {
          localObject2 = y();
          if (localObject2 != null)
          {
            m.clear();
            paramInt = localObject2[0];
            while (paramInt <= localObject2[1])
            {
              m.put(Integer.valueOf(paramInt), ((List)localObject1).get(paramInt));
              paramInt += 1;
            }
            e();
          }
        }
        else if ((paramInt >= 0) && (paramInt < ((List)localObject1).size()))
        {
          if (!h(paramInt)) {
            m.put(Integer.valueOf(paramInt), ((List)localObject1).get(paramInt));
          } else {
            m.remove(Integer.valueOf(paramInt));
          }
        }
      }
    }
  }
  
  public void c(String paramString)
  {
    j.setVisibility(8);
    q.setText(paramString);
    p.setVisibility(0);
    g.setVisibility(8);
  }
  
  public int d()
  {
    return h().size();
  }
  
  protected HeaderGridView d_()
  {
    return (HeaderGridView)k(2131362046);
  }
  
  public T e(int paramInt)
  {
    return (T)f.getItem(paramInt);
  }
  
  public void e()
  {
    if (f != null) {
      f.notifyDataSetChanged();
    }
  }
  
  protected void e(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = n.values().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((j)((Iterator)localObject).next()).e();
      }
      n.clear();
    }
    do
    {
      do
      {
        return;
      } while (g(0) == null);
      localObject = (j)n.remove(g(0));
    } while (localObject == null);
    j localj = new j();
    localj.a(0);
    localj.a(((j)localObject).b());
    localj.a(((j)localObject).c());
    n.put(g(0), localj);
  }
  
  public void f(int paramInt)
  {
    p.setVisibility(8);
    j.setText(paramInt);
    try
    {
      g.setEmptyView(j);
      return;
    }
    catch (Exception localException) {}
  }
  
  public String g(int paramInt)
  {
    return "" + paramInt;
  }
  
  public List<T> h()
  {
    return f.a();
  }
  
  public boolean h(int paramInt)
  {
    boolean bool = false;
    if (m.containsKey(Integer.valueOf(paramInt))) {
      bool = true;
    }
    return bool;
  }
  
  protected void n()
  {
    f = new c();
    f.a(new at(this));
    g = d_();
    g.setAdapter(f);
    g.setPadding(6, 6, 6, 6);
    g.setScrollBarStyle(33554432);
    g.setScrollingCacheEnabled(false);
    g.setOnItemClickListener(new au(this));
    j = ((TextView)k(16908292));
    j.setVisibility(8);
    p = ((LinearLayout)k(2131362051));
    q = ((TextView)p.findViewById(2131362052));
    p.setVisibility(8);
  }
  
  public void s()
  {
    j.setVisibility(8);
    p.setVisibility(0);
    g.setVisibility(8);
  }
  
  public void t()
  {
    j.setVisibility(8);
    j.setText("");
    p.setVisibility(0);
    q.setText(2131428422);
    g.setVisibility(8);
  }
  
  public void u()
  {
    p.setVisibility(8);
    g.setVisibility(0);
  }
  
  public void v()
  {
    m.clear();
    e(true);
  }
  
  public List<T> w()
  {
    return new ArrayList(m.values());
  }
  
  public boolean x()
  {
    int[] arrayOfInt = y();
    return (arrayOfInt != null) && (arrayOfInt[1] - arrayOfInt[0] >= m.size());
  }
  
  protected int[] y()
  {
    if (m.size() >= 2) {
      return new int[] { ((Integer)m.firstKey()).intValue(), ((Integer)m.lastKey()).intValue() };
    }
    return null;
  }
  
  public boolean z()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */