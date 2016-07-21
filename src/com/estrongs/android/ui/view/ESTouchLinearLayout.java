package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.OnClickListener;

public class ESTouchLinearLayout
  extends ESLinearLayout
{
  private View.OnClickListener a = null;
  
  public ESTouchLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESTouchLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @SuppressLint({"NewApi"})
  public ESTouchLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (a != null)) {
      a.onClick(this);
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    a = paramOnClickListener;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESTouchLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */