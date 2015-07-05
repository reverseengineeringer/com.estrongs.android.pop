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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.o;
import java.util.Iterator;
import java.util.List;

class iv
  extends BaseAdapter
{
  private Context a;
  private int b = 8;
  private Drawable[] c;
  private al d;
  private int e;
  
  public iv(Context paramContext)
  {
    a = paramContext;
    d = al.a(a);
    c = new Drawable[getCount()];
    c[0] = d.a(2130838237);
    c[1] = d.a(2130838243);
    c[2] = d.a(2130838239);
    c[3] = d.a(2130838238);
    c[4] = d.a(2130838244);
    c[5] = d.a(2130838240);
    a();
  }
  
  public void a()
  {
    int i = ad.a(a).aV();
    Iterator localIterator = dd.a.iterator();
    while (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
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
      paramViewGroup = g.a(a).inflate(2130903171, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131361853);
    paramView.setImageDrawable(c[paramInt]);
    paramView.setPadding(0, a.a(a, 10.0F), 0, a.a(a, 10.0F));
    ((TextView)paramViewGroup.findViewById(2131361997)).setVisibility(8);
    if (paramInt == e)
    {
      paramViewGroup.setBackgroundResource(2130837971);
      return paramViewGroup;
    }
    paramViewGroup.setBackgroundResource(2130837974);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */