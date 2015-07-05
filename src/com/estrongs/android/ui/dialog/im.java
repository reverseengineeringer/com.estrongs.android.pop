package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;

class im
  extends BaseAdapter
{
  private Context b;
  private io[] c;
  
  public im(ij paramij, Context paramContext, io[] paramArrayOfio)
  {
    b = paramContext;
    c = paramArrayOfio;
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
      paramViewGroup = g.a(b).inflate(2130903240, null);
    }
    ((TextView)paramViewGroup.findViewById(2131362695)).setText(c[paramInt].a);
    paramView = (RadioGroup)paramViewGroup.findViewById(2131362697);
    paramView.setTag(Integer.valueOf(paramInt));
    if (c[paramInt].c.equals("ro")) {
      paramView.check(2131362698);
    }
    for (;;)
    {
      paramView.setOnCheckedChangeListener(new in(this));
      return paramViewGroup;
      paramView.check(2131362699);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */