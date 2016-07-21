package com.facebook.ads;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.TextView;

class AdChoicesView$2
  extends Animation
{
  AdChoicesView$2(AdChoicesView paramAdChoicesView, int paramInt1, int paramInt2) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    int i = (int)(a + (b - a) * paramFloat);
    c.getLayoutParams().width = i;
    c.requestLayout();
    ec).getLayoutParams().width = (i - a);
    AdChoicesView.e(c).requestLayout();
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */