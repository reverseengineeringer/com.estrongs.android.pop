package com.estrongs.android.ui.controller.widget;

import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;

public class e
  extends Animation
  implements Animation.AnimationListener
{
  private float b;
  private float c;
  
  public e(ESFloatingActionButton paramESFloatingActionButton, int paramInt, float paramFloat1, float paramFloat2)
  {
    setDuration(paramInt);
    setInterpolator(new AccelerateDecelerateInterpolator());
    setAnimationListener(this);
    b = paramFloat1;
    c = paramFloat2;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = b;
    float f2 = c;
    a.setPhase(f1 + (f2 - f1) * paramFloat);
  }
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.widget.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */