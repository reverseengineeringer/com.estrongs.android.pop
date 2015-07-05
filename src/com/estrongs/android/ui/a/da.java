package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.pop.app.fz;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.be;
import java.util.List;

public class da
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  com.estrongs.android.ui.theme.al a;
  fz b;
  private Context c;
  private List<com.estrongs.android.pop.app.a.al> d;
  
  public da(Context paramContext, boolean paramBoolean)
  {
    c = paramContext;
    try
    {
      if (!be.c().a()) {
        be.c().b();
      }
      d = ao.a().j();
      a = com.estrongs.android.ui.theme.al.a(c);
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
  
  public void a(fz paramfz)
  {
    b = paramfz;
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
      return ao.a().e();
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
      paramViewGroup = g.a(c).inflate(2130903178, null);
    }
    Object localObject = (ImageView)paramViewGroup.findViewById(2131362455);
    ((ImageView)localObject).setImageDrawable(a.a(2130838217));
    paramView = (com.estrongs.android.pop.app.a.al)getItem(paramInt);
    if (paramView == null) {
      return paramViewGroup;
    }
    TextView localTextView;
    String str;
    if (paramView == ao.a().b())
    {
      ((ImageView)localObject).setImageDrawable(a.a(2130838218));
      paramViewGroup.setBackgroundResource(2130837974);
      localObject = (TextView)paramViewGroup.findViewById(2131362456);
      localTextView = (TextView)paramViewGroup.findViewById(2131362457);
      str = paramView.a();
      if (str != null) {
        break label189;
      }
      localTextView.setText(paramView.b());
    }
    for (;;)
    {
      localTextView.setVisibility(0);
      ((TextView)localObject).setVisibility(8);
      return paramViewGroup;
      if (paramView == ao.a().e())
      {
        ((ImageView)localObject).setImageDrawable(a.a(2130838210));
        paramViewGroup.setBackgroundResource(2130837562);
        break;
      }
      paramViewGroup.setBackgroundResource(2130837974);
      break;
      label189:
      localTextView.setText(str);
    }
  }
  
  public void notifyDataSetChanged()
  {
    d = ao.a().j();
    super.notifyDataSetChanged();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (com.estrongs.android.pop.app.a.al)getItem(paramInt);
    if (paramAdapterView != null) {
      b.a(paramAdapterView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */