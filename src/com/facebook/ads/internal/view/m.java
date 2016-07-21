package com.facebook.ads.internal.view;

import android.content.Context;
import android.widget.RelativeLayout;

public class m
  extends RelativeLayout
{
  private int a = 0;
  private int b = 0;
  
  public m(Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((b > 0) && (getMeasuredWidth() > b)) {
      setMeasuredDimension(b, getMeasuredHeight());
    }
    while (getMeasuredWidth() >= a) {
      return;
    }
    setMeasuredDimension(a, getMeasuredHeight());
  }
  
  protected void setMaxWidth(int paramInt)
  {
    b = paramInt;
  }
  
  public void setMinWidth(int paramInt)
  {
    a = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */