package com.estrongs.android.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.drag.s;
import java.util.LinkedList;
import java.util.List;

public class c<T>
  extends BaseAdapter
{
  private f a;
  protected List<T> c = new LinkedList();
  protected d d;
  protected com.estrongs.android.ui.drag.d e;
  
  public List<T> a()
  {
    return c;
  }
  
  public void a(com.estrongs.android.ui.drag.d paramd)
  {
    e = paramd;
  }
  
  public void a(d paramd)
  {
    d = paramd;
  }
  
  public void a(f paramf)
  {
    a = paramf;
  }
  
  public void a(List<T> paramList)
  {
    c = paramList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (c == null) {
      return 0;
    }
    return c.size();
  }
  
  public T getItem(int paramInt)
  {
    if ((c == null) || (paramInt < 0) || (paramInt >= c.size())) {
      return null;
    }
    return (T)c.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = d.a();
    }
    Object localObject = (e)paramViewGroup.getTag();
    if (localObject == null)
    {
      paramView = d.b(paramViewGroup);
      paramViewGroup.setTag(paramView);
      localObject = paramViewGroup;
      paramViewGroup = paramView;
      paramView = (View)localObject;
    }
    for (;;)
    {
      h = getItem(paramInt);
      if (e != null)
      {
        localObject = (DragGrid)paramView;
        ((DragGrid)localObject).a(e);
        e.a((s)localObject);
      }
      d.a(paramViewGroup, paramInt);
      return paramView;
      paramView = (View)localObject;
      if (d.a((e)localObject))
      {
        paramViewGroup = d.a();
        paramView = d.b(paramViewGroup);
        paramViewGroup.setTag(paramView);
      }
      localObject = paramView;
      paramView = paramViewGroup;
      paramViewGroup = (ViewGroup)localObject;
    }
  }
  
  public void notifyDataSetChanged()
  {
    if (a != null) {
      a.a();
    }
    super.notifyDataSetChanged();
    if (a != null) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */