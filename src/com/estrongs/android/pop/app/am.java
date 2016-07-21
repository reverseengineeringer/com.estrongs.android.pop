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
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import java.util.List;
import java.util.Map;

public final class am
  extends BaseAdapter
{
  private LayoutInflater b;
  private List<String> c;
  
  public am(Context paramContext, List<String> paramList)
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
    paramView = null;
    paramViewGroup = b.inflate(2130903109, null);
    Object localObject = new ao(null);
    a = ((ImageView)paramViewGroup.findViewById(2131624054));
    b = ((TextView)paramViewGroup.findViewById(2131624352));
    c = ((ImageView)paramViewGroup.findViewById(2131624353));
    c.setImageDrawable(a.getResources().getDrawable(2130838410));
    if ((((String)c.get(paramInt)).equals("#home_page#")) || (((String)c.get(paramInt)).equals("#home#")))
    {
      c.setVisibility(4);
      paramViewGroup.setClickable(true);
    }
    c.setFocusable(true);
    paramViewGroup.setTag(localObject);
    String str = (String)c.get(paramInt);
    c.setOnClickListener(new an(this, str));
    at localat = at.a(a);
    if (DefaultWindowSetting.b(a).containsKey(str)) {
      paramView = localat.a(((Integer)DefaultWindowSetting.b(a).get(str)).intValue());
    }
    if (paramView != null)
    {
      a.setImageDrawable(paramView);
      paramView = (String)DefaultWindowSetting.c(a).get(str);
      localObject = b;
      if (paramView == null) {
        break label311;
      }
    }
    for (;;)
    {
      ((TextView)localObject).setText(paramView);
      return paramViewGroup;
      a.setImageDrawable(bc.a(a, str));
      break;
      label311:
      paramView = ap.cc(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */