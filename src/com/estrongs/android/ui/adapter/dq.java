package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.pop.app.gm;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.bm;
import java.util.List;

public class dq
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  at a;
  gm b;
  private Context c;
  private List<j> d;
  
  public dq(Context paramContext, boolean paramBoolean)
  {
    c = paramContext;
    try
    {
      if (!bm.c().a()) {
        bm.c().b();
      }
      d = m.a().j();
      a = at.a(c);
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public int getCount()
  {
    int i = 1;
    if (d != null) {
      i = d.size() + 1;
    }
    return i;
  }
  
  public Object getItem(int paramInt)
  {
    if (paramInt == 0) {
      return m.a().e();
    }
    if (d != null) {
      return d.get(paramInt - 1);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(c).inflate(2130903292, null);
    }
    Object localObject = (ImageView)paramViewGroup.findViewById(2131625076);
    ((ImageView)localObject).setImageDrawable(g.a(a.a(2130838579), a.c(2131558715)));
    paramView = (j)getItem(paramInt);
    if (paramView == null) {
      return paramViewGroup;
    }
    TextView localTextView;
    String str;
    if (paramView == m.a().b())
    {
      ((ImageView)localObject).setImageDrawable(g.a(a.a(2130838578), a.c(2131558715)));
      paramViewGroup.setBackgroundResource(2130838302);
      localObject = (TextView)paramViewGroup.findViewById(2131625077);
      localTextView = (TextView)paramViewGroup.findViewById(2131625078);
      str = paramView.a();
      if (str != null) {
        break label225;
      }
      localTextView.setText(paramView.b());
    }
    for (;;)
    {
      localTextView.setVisibility(0);
      ((TextView)localObject).setVisibility(8);
      return paramViewGroup;
      if (paramView == m.a().e())
      {
        ((ImageView)localObject).setImageDrawable(g.a(a.a(2130838570), a.c(2131558716)));
        paramViewGroup.setBackgroundResource(2130837676);
        break;
      }
      paramViewGroup.setBackgroundResource(2130838302);
      break;
      label225:
      localTextView.setText(str);
    }
  }
  
  public void notifyDataSetChanged()
  {
    d = m.a().j();
    super.notifyDataSetChanged();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (j)getItem(paramInt);
    if (paramAdapterView != null) {
      b.a(paramAdapterView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */