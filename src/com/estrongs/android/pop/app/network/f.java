package com.estrongs.android.pop.app.network;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.l.k;
import com.estrongs.android.l.m;

class f
  extends BaseAdapter
{
  f(EsNetworkActivity paramEsNetworkActivity) {}
  
  public int getCount()
  {
    return EsNetworkActivity.b(a).e();
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = new i(a, null);
    paramView = EsNetworkActivity.a(a, paramView, paramViewGroup);
    Object localObject = EsNetworkActivity.b(a).a(paramInt);
    b.setText(localObject[0]);
    if (localObject[1] != null)
    {
      c.setText(localObject[1]);
      if (!a.getString(2131232169).equals(localObject[1])) {
        break label126;
      }
      a.setBackgroundResource(2130837883);
    }
    for (;;)
    {
      localObject = EsNetworkActivity.b(a).b(paramInt);
      if (((m)localObject).e() != 1) {
        break;
      }
      a.setBackgroundResource(2130837878);
      return paramView;
      label126:
      a.setBackgroundResource(2130837882);
    }
    if (((m)localObject).e() == 2)
    {
      a.setBackgroundResource(2130837879);
      return paramView;
    }
    if (((m)localObject).e() == 3)
    {
      a.setBackgroundResource(2130837880);
      return paramView;
    }
    a.setBackgroundResource(2130837877);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */