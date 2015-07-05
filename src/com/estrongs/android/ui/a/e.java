package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.pop.view.utils.ad;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.aw;

public class e
  extends BaseAdapter
{
  private Context a;
  private int b = 8;
  private Drawable[] c;
  private al d;
  private int e;
  
  public e(Context paramContext)
  {
    a = paramContext;
    d = al.a(a);
    c = new Drawable[getCount()];
    c[0] = d.a(2130838237);
    c[1] = d.a(2130838243);
    c[2] = d.a(2130838239);
    c[3] = d.a(2130838241);
    c[4] = d.a(2130838238);
    c[5] = d.a(2130838244);
    c[6] = d.a(2130838240);
    c[7] = d.a(2130838242);
    if (FileExplorerActivity.J() != null) {}
    for (paramContext = FileExplorerActivity.J().y();; paramContext = null)
    {
      if (paramContext != null)
      {
        int j = paramContext.N();
        int i = paramContext.M();
        if (ac.c(paramContext.c()))
        {
          paramContext = ac.a(FexApplication.a(), paramContext.c());
          j = d;
          i = c;
        }
        e = (i + j * 4);
        return;
      }
      e = -1;
      return;
    }
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
    notifyDataSetChanged();
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
    paramView.setPadding(0, a.a(a, 6.0F), 0, a.a(a, 6.0F));
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
 * Qualified Name:     com.estrongs.android.ui.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */