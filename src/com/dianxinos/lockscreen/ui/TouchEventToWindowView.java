package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class TouchEventToWindowView
  extends View
{
  private View a;
  
  public TouchEventToWindowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), paramMotionEvent.getAction(), paramMotionEvent.getRawX(), paramMotionEvent.getRawY(), paramMotionEvent.getMetaState());
    return a.onTouchEvent(paramMotionEvent);
  }
  
  public void setTargetView(View paramView)
  {
    a = paramView;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.TouchEventToWindowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */