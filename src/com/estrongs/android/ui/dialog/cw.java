package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;

class cw
  extends BaseAdapter
{
  private Context b;
  private CharSequence[] c;
  private Drawable[] d;
  private int e;
  
  public cw(ci paramci, Context paramContext, Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt)
  {
    b = paramContext;
    d = paramArrayOfDrawable;
    c = paramArrayOfCharSequence;
    e = paramInt;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
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
    boolean bool = false;
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(b).inflate(2130903280, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131625045);
    if (d == null) {
      paramView.setVisibility(8);
    }
    TextView localTextView;
    for (;;)
    {
      localTextView = (TextView)paramViewGroup.findViewById(2131625046);
      localTextView.setText(c[paramInt]);
      RadioButton localRadioButton = (RadioButton)paramViewGroup.findViewById(2131625047);
      if (!ci.access$500(a)) {
        localRadioButton.setVisibility(8);
      }
      if (e == paramInt) {
        bool = true;
      }
      localRadioButton.setChecked(bool);
      if (!a.itemsEnable) {
        break;
      }
      paramView.setAlpha(255);
      localTextView.setTextColor(at.a(a.mContext).c(2131558661));
      return paramViewGroup;
      paramView.setVisibility(0);
      paramView.setImageDrawable(d[paramInt]);
    }
    paramView.setAlpha(128);
    localTextView.setTextColor(-7829368);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */