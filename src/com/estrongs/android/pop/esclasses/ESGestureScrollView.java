package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

public class ESGestureScrollView
  extends ScrollView
{
  public ESGestureScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESGestureScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESGestureScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      int i = paramMotionEvent.getPointerCount();
      if (i >= 2) {
        return true;
      }
    }
    catch (Exception localException) {}
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESGestureScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */