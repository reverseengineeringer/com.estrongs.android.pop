package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;

class iv
  extends BaseAdapter
{
  private Context b;
  private ix[] c;
  
  public iv(is paramis, Context paramContext, ix[] paramArrayOfix)
  {
    b = paramContext;
    c = paramArrayOfix;
  }
  
  public String[] a()
  {
    String[] arrayOfString = new String[c.length * 3];
    int i = 0;
    while (i < c.length)
    {
      arrayOfString[(i * 3)] = c[i].a;
      arrayOfString[(i * 3 + 1)] = c[i].b;
      arrayOfString[(i * 3 + 2)] = c[i].c;
      i += 1;
    }
    return arrayOfString;
  }
  
  public String[] b()
  {
    int m = 0;
    int j = 0;
    for (int i = 0; j < c.length; i = k)
    {
      k = i;
      if (c[j].a()) {
        k = i + 1;
      }
      j += 1;
    }
    String[] arrayOfString = new String[i * 3];
    int k = 0;
    j = m;
    while ((k < i) && (j < c.length))
    {
      m = k;
      if (c[j].a())
      {
        arrayOfString[(k * 3)] = c[j].a;
        arrayOfString[(k * 3 + 1)] = c[j].b;
        arrayOfString[(k * 3 + 2)] = c[j].c;
        m = k + 1;
      }
      j += 1;
      k = m;
    }
    return arrayOfString;
  }
  
  public int getCount()
  {
    if (c == null) {
      return 0;
    }
    return c.length;
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(b).inflate(2130903407, null);
    }
    ((TextView)paramViewGroup.findViewById(2131625464)).setText(c[paramInt].a);
    paramView = (RadioGroup)paramViewGroup.findViewById(2131625466);
    paramView.setTag(Integer.valueOf(paramInt));
    if (c[paramInt].c.equals("ro")) {
      paramView.check(2131625467);
    }
    for (;;)
    {
      paramView.setOnCheckedChangeListener(new iw(this));
      return paramViewGroup;
      paramView.check(2131625468);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */