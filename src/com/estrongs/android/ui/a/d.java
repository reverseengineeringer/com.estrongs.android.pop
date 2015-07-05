package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;

public class d
  extends BaseAdapter
{
  private Context a;
  private String[] b;
  private int[] c;
  private String[] d;
  
  public d(Context paramContext)
  {
    a = paramContext;
    b = new String[] { "Flickr", "Instagram", "Facebook" };
    c = new int[] { 2130837549, 2130837550, 2130837548 };
    d = new String[] { "Flickr", "Instagram", "Facebook" };
  }
  
  public String a(int paramInt)
  {
    return b[paramInt];
  }
  
  public int b(int paramInt)
  {
    return c[paramInt];
  }
  
  public String c(int paramInt)
  {
    return d[paramInt];
  }
  
  public int getCount()
  {
    return b.length;
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
      paramViewGroup = g.a(a).inflate(2130903139, null);
    }
    ((ImageView)paramViewGroup.findViewById(2131362351)).setImageResource(c[paramInt]);
    ((TextView)paramViewGroup.findViewById(2131362352)).setText(b[paramInt]);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */