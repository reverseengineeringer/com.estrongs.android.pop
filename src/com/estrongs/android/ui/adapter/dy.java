package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import java.util.List;

public class dy
  extends BaseAdapter
{
  Context a;
  private List<j> b;
  
  public dy(Context paramContext)
  {
    a = paramContext;
    b = m.a().j();
  }
  
  public int getCount()
  {
    int i = 1;
    if (b != null) {
      i = b.size() + 1;
    }
    return i;
  }
  
  public Object getItem(int paramInt)
  {
    if (paramInt == 0) {
      return m.a().e();
    }
    if (b != null) {
      return b.get(paramInt - 1);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramViewGroup = new dz();
      paramView = LayoutInflater.from(a).inflate(2130903104, null);
      a = ((TextView)paramView.findViewById(2131624233));
      paramView.setTag(paramViewGroup);
    }
    j localj;
    for (;;)
    {
      localj = (j)getItem(paramInt);
      if (localj != null) {
        break;
      }
      return paramView;
      paramViewGroup = (dz)paramView.getTag();
    }
    String str = localj.a();
    if (str == null)
    {
      a.setText(localj.b());
      return paramView;
    }
    a.setText(str);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */