package com.estrongs.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;

public class FullScrnVideoLayout
  extends FrameLayout
{
  private View.OnTouchListener a;
  
  public FullScrnVideoLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public FullScrnVideoLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FullScrnVideoLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a != null) && (paramMotionEvent.getAction() == 0)) {
      a.onTouch(this, paramMotionEvent);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void setTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    a = paramOnTouchListener;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.FullScrnVideoLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */