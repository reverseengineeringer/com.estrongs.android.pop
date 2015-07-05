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
import com.estrongs.android.pop.esclasses.g;

class af
  extends BaseAdapter
{
  private Context b;
  private int[] c;
  private String[] d;
  private int e;
  
  public af(ThemeFolderActivity paramThemeFolderActivity, Context paramContext)
  {
    b = paramContext;
    c = new int[6];
    c[0] = 2130837653;
    c[1] = 2130837646;
    c[2] = 2130837643;
    c[3] = 2130837645;
    c[4] = 2130837644;
    c[5] = 2130837642;
    d = paramThemeFolderActivity.getResources().getStringArray(2131165189);
    e = 0;
    paramContext = ThemeFolderActivity.c(paramThemeFolderActivity).g();
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
    String str = ThemeFolderActivity.d(a).e(c[paramInt]);
    paramInt = ThemeFolderActivity.e(a).getResources().getIdentifier(str, "drawable", ThemeFolderActivity.e(a).getPackageName());
    return ThemeFolderActivity.e(a).getResources().getDrawable(paramInt);
  }
  
  public Drawable b(int paramInt)
  {
    if (paramInt % 2 == 0) {}
    for (paramInt = 2130838142;; paramInt = 2130838141) {
      return ThemeFolderActivity.d(a).a(paramInt);
    }
  }
  
  public void c(int paramInt)
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
      paramViewGroup = g.a(b).inflate(2130903179, null);
    }
    paramViewGroup.setBackgroundDrawable(b(paramInt));
    ((ImageView)paramViewGroup.findViewById(2131362458)).setImageDrawable(a(paramInt));
    paramView = (TextView)paramViewGroup.findViewById(2131362459);
    paramView.setTextColor(-16777216);
    paramView.setText(d[paramInt]);
    paramView = (RadioButton)paramViewGroup.findViewById(2131362460);
    if (e == paramInt) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setChecked(bool);
      paramView.setClickable(false);
      paramViewGroup.setOnClickListener(new ag(this, paramInt));
      paramViewGroup.setOnTouchListener(new ah(this, paramInt));
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */