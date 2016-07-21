package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import java.util.ArrayList;
import java.util.HashMap;

public final class f
  extends BaseAdapter
{
  private LayoutInflater b;
  private ArrayList<String> c;
  private PackageManager d;
  
  public f(Context paramContext, ArrayList<String> paramArrayList)
  {
    b = k.a(paramArrayList);
    ArrayList localArrayList;
    c = localArrayList;
    d = paramArrayList.getPackageManager();
  }
  
  public ArrayList<String> a()
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
      paramViewGroup = new h(null);
      a = ((ImageView)paramView.findViewById(2131624054));
      b = ((TextView)paramView.findViewById(2131624352));
      c = ((ImageView)paramView.findViewById(2131624353));
      c.setImageDrawable(a.getResources().getDrawable(2130838410));
      c.setFocusable(true);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      paramView.setFocusable(false);
      String str = (String)c.get(paramInt);
      try
      {
        c.setOnClickListener(new g(this, str));
        Drawable localDrawable2 = (Drawable)AppCheckUpdateList.b(a).get(str);
        Drawable localDrawable1 = localDrawable2;
        if (localDrawable2 == null) {
          localDrawable1 = d.getApplicationIcon(str);
        }
        a.setImageDrawable(localDrawable1);
        b.setText(d.getApplicationLabel(d.getApplicationInfo(str, 0)));
        return paramView;
      }
      catch (PackageManager.NameNotFoundException paramViewGroup) {}
      paramViewGroup = (h)paramView.getTag();
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */