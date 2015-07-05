package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;

class DeleteMessageContainer
  extends LinearLayout
{
  private int a = 0;
  private int b;
  private boolean c = false;
  private Context d = null;
  
  public DeleteMessageContainer(Context paramContext)
  {
    super(paramContext);
    d = paramContext;
    b = ((Activity)paramContext).getWindowManager().getDefaultDisplay().getWidth();
  }
  
  public DeleteMessageContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d = paramContext;
    b = ((Activity)paramContext).getWindowManager().getDefaultDisplay().getWidth();
  }
  
  @SuppressLint({"NewApi"})
  public DeleteMessageContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d = paramContext;
    b = ((Activity)paramContext).getWindowManager().getDefaultDisplay().getWidth();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    View localView = getChildAt(0);
    super.onMeasure(paramInt1, paramInt2);
    if (localView == null)
    {
      setMeasuredDimension(b, a);
      return;
    }
    paramInt1 = localView.getMeasuredHeight();
    paramInt2 = localView.getMeasuredWidth();
    localView = getChildAt(1);
    if (localView != null) {
      paramInt1 += localView.getMeasuredHeight();
    }
    for (;;)
    {
      if (a < paramInt1) {
        a = paramInt1;
      }
      if ((c) && (b != ((Activity)d).getWindowManager().getDefaultDisplay().getWidth()))
      {
        setMeasuredDimension(paramInt2, paramInt1);
        return;
      }
      setMeasuredDimension(paramInt2, a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.DeleteMessageContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */