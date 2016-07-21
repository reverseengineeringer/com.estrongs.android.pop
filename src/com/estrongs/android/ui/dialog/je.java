package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.q;
import java.util.Iterator;
import java.util.List;

class je
  extends BaseAdapter
{
  private Context a;
  private int b = 8;
  private Drawable[] c;
  private at d;
  private int e;
  
  public je(Context paramContext)
  {
    a = paramContext;
    d = at.a(a);
    c = new Drawable[getCount()];
    c[0] = d.a(2130838610);
    c[1] = d.a(2130838616);
    c[2] = d.a(2130838612);
    c[3] = d.a(2130838611);
    c[4] = d.a(2130838617);
    c[5] = d.a(2130838613);
    a();
  }
  
  public void a()
  {
    int i = ad.a(a).aV();
    Iterator localIterator = df.a.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (((Integer)b).intValue() == i) {
        e = ((Integer)a).intValue();
      }
    }
  }
  
  public int getCount()
  {
    return b;
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
      paramViewGroup = k.a(a).inflate(2130903283, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131624054);
    paramView.setImageDrawable(c[paramInt]);
    paramView.setPadding(0, g.a(a, 6.0F), 0, g.a(a, 6.0F));
    ((TextView)paramViewGroup.findViewById(2131624537)).setVisibility(8);
    if (paramInt == e)
    {
      paramViewGroup.setBackgroundResource(2130838298);
      return paramViewGroup;
    }
    paramViewGroup.setBackgroundResource(2130838302);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */