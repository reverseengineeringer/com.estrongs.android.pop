package com.estrongs.android.ui.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;

public class ESViewPager
  extends ViewPager
{
  public ESViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    paramInt2 = 0;
    int j;
    for (int k = 0; i < getChildCount(); k = j)
    {
      View localView = getChildAt(i);
      localView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(0, 0));
      int n = localView.getMeasuredHeight();
      int m = localView.getMeasuredWidth();
      j = k;
      if (n > k) {
        j = n;
      }
      k = paramInt2;
      if (m > paramInt2) {
        k = m;
      }
      i += 1;
      paramInt2 = k;
    }
    paramInt1 = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824), paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ESViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */