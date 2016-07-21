package com.estrongs.android.pop.app;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;

class dv
  extends BaseAdapter
{
  dv(LocalFileSharingActivity paramLocalFileSharingActivity) {}
  
  public int getCount()
  {
    synchronized (LocalFileSharingActivity.c(a))
    {
      int i = LocalFileSharingActivity.c(a).length;
      return i;
    }
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
    paramViewGroup = LocalFileSharingActivity.c(a);
    if (paramView == null) {
      try
      {
        paramView = k.a(a).inflate(2130903285, null);
        for (;;)
        {
          try
          {
            View localView = paramView.findViewById(2131625050);
            Object localObject = paramView.findViewById(2131625053);
            ee localee = LocalFileSharingActivity.c(a)[paramInt];
            localView.setVisibility(0);
            ((View)localObject).setVisibility(4);
            localObject = (TextView)localView.findViewById(2131625051);
            ((TextView)localObject).setTextColor(LocalFileSharingActivity.e(a).i());
            ((TextView)localObject).setText(a + "(" + b + ")");
            ((CheckBox)localView.findViewById(2131625052)).setChecked(c);
            return paramView;
          }
          catch (Exception localException)
          {
            return paramView;
          }
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */