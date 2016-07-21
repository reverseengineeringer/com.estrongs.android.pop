package android.support.v7.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class w
  extends BaseAdapter
{
  private i b;
  private int c = -1;
  
  public w(v paramv, i parami)
  {
    b = parami;
    a();
  }
  
  public m a(int paramInt)
  {
    if (v.access$100(a)) {}
    for (ArrayList localArrayList = b.l();; localArrayList = b.i())
    {
      int i = paramInt;
      if (c >= 0)
      {
        i = paramInt;
        if (paramInt >= c) {
          i = paramInt + 1;
        }
      }
      return (m)localArrayList.get(i);
    }
  }
  
  void a()
  {
    m localm = v.access$300(a).r();
    if (localm != null)
    {
      ArrayList localArrayList = v.access$300(a).l();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((m)localArrayList.get(i) == localm)
        {
          c = i;
          return;
        }
        i += 1;
      }
    }
    c = -1;
  }
  
  public int getCount()
  {
    if (v.access$100(a)) {}
    for (ArrayList localArrayList = b.l(); c < 0; localArrayList = b.i()) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = v.access$200(a).inflate(v.ITEM_LAYOUT, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (aa)paramView;
      if (a.mForceShowIcon) {
        ((ListMenuItemView)paramView).setForceShowIcon(true);
      }
      paramViewGroup.a(a(paramInt), 0);
      return paramView;
    }
  }
  
  public void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */