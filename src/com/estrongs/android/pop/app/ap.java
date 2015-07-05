package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import java.util.List;

public final class ap
  extends BaseAdapter
{
  private LayoutInflater b;
  private List<String> c;
  
  public ap(Context paramContext, List<String> paramList)
  {
    b = g.a(paramList);
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
      paramView = b.inflate(2130903047, null);
      paramViewGroup = new ar(null);
      a = ((ImageView)paramView.findViewById(2131361853));
      a.setVisibility(8);
      b = ((TextView)paramView.findViewById(2131361854));
      c = ((ImageView)paramView.findViewById(2131361855));
      c.setImageDrawable(a.getResources().getDrawable(2130838039));
      c.setFocusable(true);
      paramView.setFocusable(false);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      String str = (String)c.get(paramInt);
      c.setOnClickListener(new aq(this, str));
      b.setText(str);
      return paramView;
      paramViewGroup = (ar)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */