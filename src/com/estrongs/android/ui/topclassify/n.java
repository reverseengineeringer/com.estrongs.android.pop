package com.estrongs.android.ui.topclassify;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

class n
  implements ValueAnimator.AnimatorUpdateListener
{
  n(ExpandableLayout paramExpandableLayout) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    ExpandableLayout.a(a).setRotation(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */