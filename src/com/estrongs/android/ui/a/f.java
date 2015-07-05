package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.aw;

public class f
  extends BaseAdapter
{
  protected int a = 0;
  private Context b;
  private int c = 9;
  private Drawable[] d;
  private String[] e;
  private al f;
  
  public f(Context paramContext)
  {
    b = paramContext;
    f = al.a(b);
    d = new Drawable[getCount()];
    d[0] = f.a(2130838257);
    d[1] = f.a(2130838258);
    d[2] = f.a(2130838259);
    d[3] = f.a(2130838260);
    d[4] = f.a(2130838261);
    d[5] = f.a(2130838262);
    d[6] = f.a(2130838254);
    d[7] = f.a(2130838255);
    d[8] = f.a(2130838256);
    e = b.getResources().getStringArray(2131165184);
    paramContext = null;
    if (FileExplorerActivity.J() != null) {
      paramContext = FileExplorerActivity.J().y();
    }
    if (paramContext != null)
    {
      a = paramContext.B();
      return;
    }
    a = -1;
  }
  
  public void a()
  {
    aw localaw = null;
    if (FileExplorerActivity.J() != null) {
      localaw = FileExplorerActivity.J().y();
    }
    if (localaw != null)
    {
      a = localaw.B();
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
      paramViewGroup = g.a(b).inflate(2130903171, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131361853);
    paramView.setImageDrawable(d[paramInt]);
    paramView.setPadding(0, a.a(b, 4.0F), 0, a.a(b, 4.0F));
    ((TextView)paramViewGroup.findViewById(2131361997)).setText(e[paramInt]);
    if (paramInt == a)
    {
      paramViewGroup.setBackgroundResource(2130837971);
      return paramViewGroup;
    }
    paramViewGroup.setBackgroundResource(2130837974);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */