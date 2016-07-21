package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;

public class ESHorizontalScrollView
  extends HorizontalScrollView
{
  float a = 0.0F;
  
  public ESHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ESHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      a = paramMotionEvent.getX();
      continue;
      if (Math.abs(paramMotionEvent.getX() - a) > 10.0F)
      {
        requestDisallowInterceptTouchEvent(true);
        return true;
      }
      requestDisallowInterceptTouchEvent(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESHorizontalScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */