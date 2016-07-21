package com.estrongs.android.pop.esclasses;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;

class c
  implements Filterable, WrapperListAdapter
{
  final ArrayList<b> a = new ArrayList();
  ArrayList<b> b;
  ArrayList<b> c;
  boolean d;
  private final DataSetObservable f = new DataSetObservable();
  private final ListAdapter g;
  private int h = 1;
  private int i = -1;
  private final boolean j;
  private boolean k = true;
  private boolean l = false;
  
  public c(ArrayList<b> paramArrayList1, ArrayList<b> paramArrayList2, ListAdapter paramListAdapter)
  {
    ListAdapter localListAdapter;
    g = localListAdapter;
    j = (localListAdapter instanceof Filterable);
    if (paramArrayList2 == null)
    {
      b = a;
      if (paramListAdapter != null) {
        break label130;
      }
      c = a;
      label93:
      if ((!a(b)) || (!a(c))) {
        break label138;
      }
    }
    for (;;)
    {
      d = bool;
      return;
      b = paramArrayList2;
      break;
      label130:
      c = paramListAdapter;
      break label93;
      label138:
      bool = false;
    }
  }
  
  private boolean a(ArrayList<b> paramArrayList)
  {
    if (paramArrayList != null)
    {
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext()) {
        if (!nextc) {
          return false;
        }
      }
    }
    return true;
  }
  
  private int d()
  {
    return (int)(Math.ceil(1.0F * g.getCount() / h) * h);
  }
  
  public int a()
  {
    return b.size();
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 1) {}
    while (h == paramInt) {
      return;
    }
    h = paramInt;
    c();
  }
  
  public boolean areAllItemsEnabled()
  {
    return (g == null) || ((d) && (g.areAllItemsEnabled()));
  }
  
  public int b()
  {
    return c.size();
  }
  
  public void b(int paramInt)
  {
    i = paramInt;
  }
  
  public void c()
  {
    f.notifyChanged();
    CopyOfHeaderGridView.a(e);
  }
  
  public int getCount()
  {
    if (g != null) {
      return (b() + a()) * h + d();
    }
    return (b() + a()) * h;
  }
  
  public Filter getFilter()
  {
    if (j) {
      return ((Filterable)g).getFilter();
    }
    return null;
  }
  
  public Object getItem(int paramInt)
  {
    int m = a() * h;
    if (paramInt < m)
    {
      if (paramInt % h == 0) {
        return b.get(paramInt / h)).b;
      }
      return null;
    }
    int n = paramInt - m;
    paramInt = 0;
    if (g != null)
    {
      m = d();
      paramInt = m;
      if (n < m)
      {
        if (n < g.getCount()) {
          return g.getItem(n);
        }
        return null;
      }
    }
    paramInt = n - paramInt;
    if (paramInt % h == 0) {
      return c.get(paramInt)).b;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    int m = a() * h;
    if ((g != null) && (paramInt >= m))
    {
      paramInt -= m;
      if (paramInt < g.getCount()) {
        return g.getItemId(paramInt);
      }
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i2 = a() * h;
    int i1;
    int n;
    int m;
    int i3;
    if (g == null)
    {
      i1 = 0;
      n = -2;
      m = n;
      if (k)
      {
        m = n;
        if (paramInt < i2)
        {
          m = n;
          if (paramInt == 0)
          {
            m = n;
            if (l) {
              m = b.size() + i1 + c.size() + 1 + 1;
            }
          }
          if (paramInt % h != 0) {
            m = paramInt / h + 1 + i1;
          }
        }
      }
      i3 = paramInt - i2;
      if (g == null) {
        break label323;
      }
      n = d();
      if ((i3 < 0) || (i3 >= n)) {
        break label320;
      }
      if (i3 >= g.getCount()) {
        break label297;
      }
      m = g.getItemViewType(i3);
    }
    for (;;)
    {
      i2 = m;
      if (k)
      {
        n = i3 - n;
        i2 = m;
        if (n >= 0)
        {
          i2 = m;
          if (n < getCount())
          {
            i2 = m;
            if (n % h != 0) {
              i2 = i1 + b.size() + 1 + (n / h + 1);
            }
          }
        }
      }
      if (CopyOfHeaderGridView.a) {
        l.b("GridViewHeaderAndFooter", String.format("getItemViewType: pos: %s, result: %s", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(i2), Boolean.valueOf(k), Boolean.valueOf(l) }));
      }
      return i2;
      i1 = g.getViewTypeCount() - 1;
      break;
      label297:
      if (k)
      {
        m = b.size() + i1 + 1;
      }
      else
      {
        label320:
        continue;
        label323:
        n = 0;
      }
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int m = 0;
    if (CopyOfHeaderGridView.a) {
      if (paramView != null) {
        break label95;
      }
    }
    int n;
    ViewGroup localViewGroup;
    label95:
    for (boolean bool = true;; bool = false)
    {
      l.b("GridViewHeaderAndFooter", String.format("getView: %s, reused: %s", new Object[] { Integer.valueOf(paramInt), Boolean.valueOf(bool) }));
      n = a() * h;
      if (paramInt >= n) {
        break label140;
      }
      localViewGroup = b.get(paramInt / h)).a;
      if (paramInt % h != 0) {
        break;
      }
      return localViewGroup;
    }
    View localView = paramView;
    if (paramView == null) {
      localView = new View(paramViewGroup.getContext());
    }
    localView.setVisibility(4);
    localView.setMinimumHeight(localViewGroup.getHeight());
    return localView;
    label140:
    int i1 = paramInt - n;
    if (g != null)
    {
      n = d();
      m = n;
      if (i1 < n)
      {
        if (i1 < g.getCount()) {
          return g.getView(i1, paramView, paramViewGroup);
        }
        localView = paramView;
        if (paramView == null) {
          localView = new View(paramViewGroup.getContext());
        }
        localView.setVisibility(4);
        localView.setMinimumHeight(i);
        return localView;
      }
    }
    m = i1 - m;
    if (m < getCount())
    {
      localViewGroup = c.get(m / h)).a;
      if (paramInt % h == 0) {
        return localViewGroup;
      }
      localView = paramView;
      if (paramView == null) {
        localView = new View(paramViewGroup.getContext());
      }
      localView.setVisibility(4);
      localView.setMinimumHeight(localViewGroup.getHeight());
      return localView;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public int getViewTypeCount()
  {
    if (g == null) {}
    for (int m = 1;; m = g.getViewTypeCount())
    {
      int n = m;
      if (k)
      {
        int i1 = b.size() + 1 + c.size();
        n = i1;
        if (l) {
          n = i1 + 1;
        }
        n = m + n;
      }
      if (CopyOfHeaderGridView.a) {
        l.b("GridViewHeaderAndFooter", String.format("getViewTypeCount: %s", new Object[] { Integer.valueOf(n) }));
      }
      return n;
    }
  }
  
  public ListAdapter getWrappedAdapter()
  {
    return g;
  }
  
  public boolean hasStableIds()
  {
    return (g != null) && (g.hasStableIds());
  }
  
  public boolean isEmpty()
  {
    return (g == null) || (g.isEmpty());
  }
  
  public boolean isEnabled(int paramInt)
  {
    boolean bool = true;
    int m = a() * h;
    if (paramInt < m) {
      if ((paramInt % h == 0) && (b.get(paramInt / h)).c)) {
        bool = true;
      }
    }
    label114:
    do
    {
      int n;
      do
      {
        for (;;)
        {
          return bool;
          bool = false;
        }
        n = paramInt - m;
        if (g == null) {
          break;
        }
        m = d();
        paramInt = m;
        if (n >= m) {
          break label114;
        }
      } while ((n < g.getCount()) && (g.isEnabled(n)));
      return false;
      paramInt = 0;
      paramInt = n - paramInt;
    } while ((paramInt % h == 0) && (c.get(paramInt / h)).c));
    return false;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    f.registerObserver(paramDataSetObserver);
    if (g != null) {
      g.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    f.unregisterObserver(paramDataSetObserver);
    if (g != null) {
      g.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */