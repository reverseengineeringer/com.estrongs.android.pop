package com.facebook.ads;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.MeasureSpec;

class NativeAdScrollView$b
  extends ViewPager
{
  public NativeAdScrollView$b(NativeAdScrollView paramNativeAdScrollView, Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 0;
    int j;
    for (int i = 0; paramInt2 < getChildCount(); i = j)
    {
      View localView = getChildAt(paramInt2);
      localView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(0, 0));
      int k = localView.getMeasuredHeight();
      j = i;
      if (k > i) {
        j = k;
      }
      paramInt2 += 1;
    }
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(i, 1073741824));
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdScrollView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */