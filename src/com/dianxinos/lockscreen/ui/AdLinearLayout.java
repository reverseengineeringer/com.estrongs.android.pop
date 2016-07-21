package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.dianxinos.lockscreen.ad.c;

public class AdLinearLayout
  extends LinearLayout
{
  private boolean a;
  
  public AdLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public AdLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a) && (!c.a(getContext()).c())) {
      return true;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void setKeyguardLockState(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.AdLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */