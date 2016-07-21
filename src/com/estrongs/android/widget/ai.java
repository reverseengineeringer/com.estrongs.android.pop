package com.estrongs.android.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

class ai
  implements Filterable, WrapperListAdapter
{
  ArrayList<ah> a;
  ArrayList<ah> b;
  boolean c;
  private final DataSetObservable d = new DataSetObservable();
  private final ListAdapter e;
  private int f = 1;
  private final boolean g;
  
  public ai(ArrayList<ah> paramArrayList1, ArrayList<ah> paramArrayList2, ListAdapter paramListAdapter)
  {
    e = paramListAdapter;
    g = (paramListAdapter instanceof Filterable);
    if (paramArrayList1 == null) {
      throw new IllegalArgumentException("headerViewInfos cannot be null");
    }
    if (paramArrayList2 == null) {
      throw new IllegalArgumentException("footerViewInfos cannot be null");
    }
    a = paramArrayList1;
    b = paramArrayList2;
    if ((a(a)) && (a(b))) {}
    for (;;)
    {
      c = bool;
      return;
      bool = false;
    }
  }
  
  private boolean a(ArrayList<ah> paramArrayList)
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
  
  public int a()
  {
    return a.size();
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 1) {
      throw new IllegalArgumentException("Number of columns must be 1 or more");
    }
    if (f != paramInt)
    {
      f = paramInt;
      c();
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return (e == null) || ((c) && (e.areAllItemsEnabled()));
  }
  
  public int b()
  {
    return b.size();
  }
  
  public void c()
  {
    d.notifyChanged();
  }
  
  public int getCount()
  {
    if (e != null)
    {
      int i = e.getCount() % f;
      if (i == 0) {}
      for (i = 0;; i = f - i) {
        return i + (a() * f + e.getCount()) + b() * f;
      }
    }
    return a() * f + b() * f;
  }
  
  public Filter getFilter()
  {
    if (g) {
      return ((Filterable)e).getFilter();
    }
    return null;
  }
  
  public Object getItem(int paramInt)
  {
    int i = a();
    int j = f * i;
    if (paramInt < j)
    {
      if (paramInt % f == 0) {
        return a.get(paramInt / f)).b;
      }
      return null;
    }
    if (paramInt < e.getCount() + j)
    {
      i = paramInt - j;
      if ((e != null) && (i < e.getCount())) {
        return e.getItem(i);
      }
    }
    i = e.getCount() % f;
    if (i == 0) {}
    for (i = 0; paramInt < e.getCount() + j + i; i = f - i) {
      return null;
    }
    if ((paramInt < b() * f + (e.getCount() + j + i)) && (paramInt % f == 0)) {
      return b.get((paramInt - j - e.getCount() - i) / f)).b;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    int i = a() * f;
    if ((e != null) && (paramInt >= i) && (paramInt < e.getCount() + i))
    {
      paramInt -= i;
      if (paramInt < e.getCount()) {
        return e.getItemId(paramInt);
      }
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = 1;
    int j = a() * f;
    if ((paramInt < j) && (paramInt % f != 0))
    {
      paramInt = i;
      if (e != null) {
        paramInt = e.getViewTypeCount();
      }
    }
    do
    {
      return paramInt;
      if ((e != null) && (paramInt >= j) && (paramInt < e.getCount() + j + (f - e.getCount() % f)))
      {
        k = paramInt - j;
        m = e.getCount();
        if (k < m) {
          return e.getItemViewType(k);
        }
        if ((m != 0) && (f != 1)) {
          return e.getItemViewType(m - 1);
        }
      }
      int k = b();
      int m = f;
      if ((e == null) || (paramInt >= j + e.getCount() + k * m)) {
        break;
      }
      paramInt = i;
    } while (e == null);
    return e.getViewTypeCount();
    return -2;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    int j = a() * f;
    if (paramInt < j)
    {
      paramView = a.get(paramInt / f)).a;
      if (paramInt % f != 0) {}
    }
    ViewGroup localViewGroup;
    do
    {
      return paramView;
      paramViewGroup = new View(paramViewGroup.getContext());
      paramViewGroup.setVisibility(4);
      paramViewGroup.setMinimumHeight(paramView.getHeight());
      return paramViewGroup;
      if (paramInt < e.getCount() + j)
      {
        k = paramInt - j;
        if ((e != null) && (k < e.getCount()))
        {
          paramView = e.getView(k, paramView, paramViewGroup);
          paramView.setVisibility(0);
          return paramView;
        }
      }
      int k = e.getCount() % f;
      if (k == 0) {}
      while (paramInt < e.getCount() + j + i)
      {
        paramView = e.getView(e.getCount() - 1, paramView, paramViewGroup);
        paramView.setVisibility(4);
        return paramView;
        i = f - k;
      }
      if (paramInt >= b() * f + (e.getCount() + j + i)) {
        break;
      }
      localViewGroup = b.get((paramInt - j - e.getCount() - i) / f)).a;
      paramView = localViewGroup;
    } while (paramInt % f == 0);
    paramView = new View(paramViewGroup.getContext());
    paramView.setVisibility(4);
    paramView.setMinimumHeight(localViewGroup.getHeight());
    return paramView;
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public int getViewTypeCount()
  {
    if (e != null) {
      return e.getViewTypeCount() + 1;
    }
    return 2;
  }
  
  public ListAdapter getWrappedAdapter()
  {
    return e;
  }
  
  public boolean hasStableIds()
  {
    if (e != null) {
      return e.hasStableIds();
    }
    return false;
  }
  
  public boolean isEmpty()
  {
    return ((e == null) || (e.isEmpty())) && (a() == 0) && (b() == 0);
  }
  
  public boolean isEnabled(int paramInt)
  {
    boolean bool = true;
    int i = a();
    int j = f * i;
    if (paramInt < j) {
      return (paramInt % f == 0) && (a.get(paramInt / f)).c);
    }
    if (paramInt < e.getCount() + j)
    {
      i = paramInt - j;
      if ((e != null) && (i < e.getCount())) {
        return e.isEnabled(i);
      }
    }
    i = e.getCount() % f;
    if (i == 0) {}
    for (i = 0; paramInt < e.getCount() + j + i; i = f - i) {
      return false;
    }
    if (paramInt < b() * f + (e.getCount() + j + i))
    {
      if ((paramInt % f == 0) && (b.get((paramInt - j - e.getCount() - i) / f)).c)) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    d.registerObserver(paramDataSetObserver);
    if (e != null) {
      e.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    d.unregisterObserver(paramDataSetObserver);
    if (e != null) {
      e.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */