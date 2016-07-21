package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;

public class ea
  extends BaseAdapter
{
  private Context a;
  private CharSequence[] b;
  private Drawable[] c;
  private int d;
  private boolean e;
  
  public ea(Context paramContext, Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt, boolean paramBoolean)
  {
    a = paramContext;
    c = paramArrayOfDrawable;
    b = paramArrayOfCharSequence;
    d = paramInt;
    e = paramBoolean;
  }
  
  public int getCount()
  {
    if (b == null) {
      return 0;
    }
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
    boolean bool = false;
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from(a).inflate(2130903280, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131625045);
    if (c == null) {
      paramView.setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramViewGroup.findViewById(2131625046)).setText(b[paramInt]);
      paramView = (RadioButton)paramViewGroup.findViewById(2131625047);
      if (!e) {
        paramView.setVisibility(8);
      }
      if (d == paramInt) {
        bool = true;
      }
      paramView.setChecked(bool);
      return paramViewGroup;
      paramView.setVisibility(0);
      paramView.setImageDrawable(c[paramInt]);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */