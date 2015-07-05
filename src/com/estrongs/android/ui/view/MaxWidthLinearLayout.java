package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.e;

public class MaxWidthLinearLayout
  extends LinearLayout
{
  private int a = -1;
  private int b = -1;
  
  public MaxWidthLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public MaxWidthLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @SuppressLint({"NewApi"})
  public MaxWidthLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!e.b()) {
      if ((a <= 0) && (b <= 0)) {
        break label103;
      }
    }
    label103:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE);
        paramInt2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE);
      }
      if (a > 0) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(a, 1073741824);
      }
      if (b > 0) {
        paramInt2 = View.MeasureSpec.makeMeasureSpec(b, 1073741824);
      }
      if (i != 0)
      {
        measureChildren(paramInt1, paramInt2);
        setMeasuredDimension(paramInt1, paramInt2);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.MaxWidthLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */