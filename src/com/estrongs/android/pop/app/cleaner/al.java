package com.estrongs.android.pop.app.cleaner;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class al
  extends Animation
{
  private Transformation a;
  
  public al(Transformation paramTransformation)
  {
    a = paramTransformation;
    setDuration(0L);
    setFillAfter(true);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation.compose(a);
    super.applyTransformation(paramFloat, paramTransformation);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */