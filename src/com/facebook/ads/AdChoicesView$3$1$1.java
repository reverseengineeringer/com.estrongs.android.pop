package com.facebook.ads;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.TextView;

class AdChoicesView$3$1$1
  extends Animation
{
  AdChoicesView$3$1$1(AdChoicesView.3.1 param1) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    int i = (int)(a.a.a + (a.a.b - a.a.a) * paramFloat);
    a.a.c.getLayoutParams().width = i;
    a.a.c.requestLayout();
    ea.a.c).getLayoutParams().width = (i - a.a.b);
    AdChoicesView.e(a.a.c).requestLayout();
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView.3.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */