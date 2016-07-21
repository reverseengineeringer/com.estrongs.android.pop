package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class LockScreenViewPager
  extends DXViewPager
{
  public LockScreenViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOverScrollMode(2);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.LockScreenViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */