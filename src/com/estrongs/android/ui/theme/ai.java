package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;

class ai
  extends BaseAdapter
{
  private Context b;
  private int[] c;
  private String[] d;
  private int e;
  
  public ai(ThemeFolderActivity paramThemeFolderActivity, Context paramContext)
  {
    b = paramContext;
    c = new int[6];
    c[0] = 2131558528;
    c[1] = 2131558532;
    c[2] = 2131558529;
    c[3] = 2131558531;
    c[4] = 2131558530;
    c[5] = 2131558527;
    d = paramThemeFolderActivity.getResources().getStringArray(2131492880);
    e = 0;
    paramContext = ThemeFolderActivity.b(paramThemeFolderActivity).h();
    for (;;)
    {
      if (i < c.length)
      {
        if (paramThemeFolderActivity.getResources().getResourceEntryName(c[i]).equals(paramContext)) {
          e = i;
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
  
  public int a()
  {
    return c[e];
  }
  
  public Drawable a(int paramInt)
  {
    return ThemeFolderActivity.d(a).a(ThemeFolderActivity.c(a), c[paramInt]);
  }
  
  public void b(int paramInt)
  {
    e = paramInt;
    ThemeFolderActivity.a(a, true);
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    return 6;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(b).inflate(2130903293, null);
    }
    ((ImageView)paramViewGroup.findViewById(2131625079)).setImageDrawable(a(paramInt));
    paramView = (TextView)paramViewGroup.findViewById(2131625080);
    paramView.setTextColor(-16777216);
    paramView.setText(d[paramInt]);
    paramView = (RadioButton)paramViewGroup.findViewById(2131625081);
    if (e == paramInt) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setChecked(bool);
      paramView.setClickable(false);
      paramViewGroup.setOnClickListener(new aj(this, paramInt));
      paramViewGroup.setOnTouchListener(new ak(this));
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */