package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;

public class InfoCycleView
  extends FrameLayout
{
  private TextView a;
  private InfoProgressView b;
  private TextView c;
  
  public InfoCycleView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public InfoCycleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public InfoCycleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    inflate(getContext(), ad.lock_screen_info_cycle_view_layout, this);
  }
  
  private void a()
  {
    b = ((InfoProgressView)findViewById(ac.lock_screen_info_cycle_progress));
    a = ((TextView)findViewById(ac.lock_screen_info_cycle_text));
    c = ((TextView)findViewById(ac.lock_screen_info_cycle_percent_sign));
  }
  
  public void a(int paramInt)
  {
    b.a(paramInt);
    a.setText(String.valueOf(paramInt));
    if (c.getVisibility() != 0) {
      c.setVisibility(0);
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.InfoCycleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */