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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;

class cu
  extends BaseAdapter
{
  private Context b;
  private CharSequence[] c;
  private Drawable[] d;
  private int e;
  
  public cu(cg paramcg, Context paramContext, Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt)
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
      paramViewGroup = g.a(b).inflate(2130903168, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131362429);
    if (d == null) {
      paramView.setVisibility(8);
    }
    TextView localTextView;
    for (;;)
    {
      localTextView = (TextView)paramViewGroup.findViewById(2131362430);
      localTextView.setText(c[paramInt]);
      RadioButton localRadioButton = (RadioButton)paramViewGroup.findViewById(2131362431);
      if (!cg.access$500(a)) {
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
      localTextView.setTextColor(al.a(a.mContext).d(2131230738));
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
 * Qualified Name:     com.estrongs.android.ui.dialog.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */