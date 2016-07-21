package com.estrongs.android.ui.recycler;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.estrongs.android.pop.utils.cl;
import java.util.ArrayList;
import java.util.List;

public class a
  extends BaseAdapter
{
  List<b> a = null;
  Context b;
  
  public a(Context paramContext)
  {
    b = paramContext;
    a = a(paramContext);
  }
  
  private List<b> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new b(this, "app://user", paramContext.getResources().getString(2131231015)));
    localArrayList.add(new b(this, "app://system", paramContext.getResources().getString(2131231013)));
    localArrayList.add(new b(this, "app://phone", paramContext.getResources().getString(2131231011)));
    localArrayList.add(new b(this, "app://sdcard", paramContext.getResources().getString(2131231012)));
    if (cl.a())
    {
      localArrayList.add(new b(this, "app://update", paramContext.getResources().getString(2131231014)));
      localArrayList.add(new b(this, "app://backuped", paramContext.getResources().getString(2131231005)));
      localArrayList.add(new b(this, "apk://", paramContext.getResources().getString(2131231010)));
      return localArrayList;
    }
    localArrayList.add(new b(this, "app://backuped", paramContext.getResources().getString(2131231005)));
    localArrayList.add(new b(this, "apk://", paramContext.getResources().getString(2131231010)));
    return localArrayList;
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView == null)
    {
      paramView = new c();
      localView = LayoutInflater.from(b).inflate(2130903104, null);
      a = ((TextView)localView.findViewById(2131624233));
      localView.setTag(paramView);
      paramViewGroup = paramView;
    }
    for (;;)
    {
      a.setText(a.get(paramInt)).b);
      return localView;
      paramViewGroup = (c)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */