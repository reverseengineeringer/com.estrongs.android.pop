package com.estrongs.android.ui.topclassify;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

class o
  implements ValueAnimator.AnimatorUpdateListener
{
  o(ExpandableLayout paramExpandableLayout, View paramView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    int i = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    int j = ((ExpandableLayout)a).getOrientation();
    paramValueAnimator = a.getLayoutParams();
    if (j == 0)
    {
      width = i;
      height = b.getMeasuredHeight();
      a.setLayoutParams(paramValueAnimator);
    }
    while (1 != j) {
      return;
    }
    width = b.getMeasuredWidth();
    height = i;
    a.setLayoutParams(paramValueAnimator);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */