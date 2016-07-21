package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.cr;

public class f
  extends BaseAdapter
{
  protected int a = 0;
  private Context b;
  private int c = 9;
  private Drawable[] d;
  private String[] e;
  private at f;
  
  public f(Context paramContext)
  {
    b = paramContext;
    f = at.a(b);
    d = new Drawable[getCount()];
    d[0] = f.a(2130838632);
    d[1] = f.a(2130838633);
    d[2] = f.a(2130838634);
    d[3] = f.a(2130838635);
    d[4] = f.a(2130838636);
    d[5] = f.a(2130838637);
    d[6] = f.a(2130838629);
    d[7] = f.a(2130838630);
    d[8] = f.a(2130838631);
    e = b.getResources().getStringArray(2131492881);
    paramContext = null;
    if (FileExplorerActivity.X() != null) {
      paramContext = FileExplorerActivity.X().O();
    }
    if (paramContext != null)
    {
      a = paramContext.P();
      return;
    }
    a = -1;
  }
  
  public void a()
  {
    cr localcr = null;
    if (FileExplorerActivity.X() != null) {
      localcr = FileExplorerActivity.X().O();
    }
    if (localcr != null)
    {
      a = localcr.P();
      return;
    }
    a = -1;
  }
  
  public int getCount()
  {
    return c;
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
      paramViewGroup = k.a(b).inflate(2130903283, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131624054);
    paramView.setImageDrawable(d[paramInt]);
    paramView.setPadding(0, g.a(b, 4.0F), 0, g.a(b, 4.0F));
    ((TextView)paramViewGroup.findViewById(2131624537)).setText(e[paramInt]);
    if (paramInt == a)
    {
      paramViewGroup.setBackgroundResource(2130838298);
      return paramViewGroup;
    }
    paramViewGroup.setBackgroundResource(2130838302);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */