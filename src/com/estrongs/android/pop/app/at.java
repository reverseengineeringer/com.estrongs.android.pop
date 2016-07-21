package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import java.util.List;

public final class at
  extends BaseAdapter
{
  private LayoutInflater b;
  private List<String> c;
  
  public at(Context paramContext, List<String> paramList)
  {
    b = k.a(paramList);
    List localList;
    c = localList;
  }
  
  public List<String> a()
  {
    return c;
  }
  
  public int getCount()
  {
    return c.size();
  }
  
  public Object getItem(int paramInt)
  {
    return c.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = b.inflate(2130903109, null);
      paramViewGroup = new av(null);
      a = ((ImageView)paramView.findViewById(2131624054));
      a.setVisibility(8);
      b = ((TextView)paramView.findViewById(2131624352));
      c = ((ImageView)paramView.findViewById(2131624353));
      c.setImageDrawable(a.getResources().getDrawable(2130838410));
      c.setFocusable(true);
      paramView.setFocusable(false);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      String str = (String)c.get(paramInt);
      c.setOnClickListener(new au(this, str));
      b.setText(str);
      return paramView;
      paramViewGroup = (av)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */