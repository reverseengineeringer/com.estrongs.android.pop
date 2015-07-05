package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class ESLinearLayout
  extends LinearLayout
{
  public ESLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @SuppressLint({"NewApi"})
  public ESLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    try
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    catch (Throwable paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */