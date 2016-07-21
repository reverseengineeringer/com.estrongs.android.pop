package com.estrongs.android.pop.app.analysis.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;

class w
  extends Animation
  implements Animation.AnimationListener
{
  private boolean b = false;
  
  private w(AnalysisLoadingView paramAnalysisLoadingView) {}
  
  public boolean a()
  {
    return b;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    super.applyTransformation(paramFloat, paramTransformation);
    a.setAnimateScan(paramFloat);
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    setDuration(AnalysisLoadingView.b(a));
    setRepeatMode(1);
    setRepeatCount(-1);
    setInterpolator(new LinearInterpolator());
    setAnimationListener(this);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    b = false;
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    b = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */