package com.estrongs.android.ui.controller.widget;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;

public class f
  extends Animation
  implements Animation.AnimationListener
{
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private Camera f;
  
  public f(ESFloatingActionButton paramESFloatingActionButton, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    b = paramFloat1;
    c = paramFloat2;
    d = paramFloat3;
    e = paramFloat4;
    setAnimationListener(this);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = b;
    float f2 = c;
    float f3 = d;
    float f4 = e;
    Camera localCamera = f;
    paramTransformation = paramTransformation.getMatrix();
    localCamera.save();
    localCamera.rotateY(f1 + (f2 - f1) * paramFloat);
    localCamera.getMatrix(paramTransformation);
    localCamera.restore();
    paramTransformation.preTranslate(-f3, -f4);
    paramTransformation.postTranslate(f3, f4);
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    f = new Camera();
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (ESFloatingActionButton.a(a))
    {
      paramAnimation = a;
      if (ESFloatingActionButton.c(a)) {
        break label49;
      }
    }
    label49:
    for (boolean bool = true;; bool = false)
    {
      ESFloatingActionButton.a(paramAnimation, bool);
      a.invalidate();
      a.setFocusable(false);
      return;
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a.setFocusable(true);
    a.setFocusableInTouchMode(true);
    a.requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */