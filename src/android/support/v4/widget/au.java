package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class au
  extends Animation
{
  au(at paramat, ax paramax) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (b.a)
    {
      at.a(b, paramFloat, a);
      return;
    }
    float f1 = at.a(b, a);
    float f2 = a.g();
    float f4 = a.f();
    float f3 = a.k();
    at.b(b, paramFloat, a);
    if (paramFloat <= 0.5F)
    {
      float f5 = paramFloat / 0.5F;
      f5 = at.a().getInterpolation(f5);
      a.b(f4 + f5 * (0.8F - f1));
    }
    if (paramFloat > 0.5F)
    {
      f4 = (paramFloat - 0.5F) / 0.5F;
      f4 = at.a().getInterpolation(f4);
      a.c((0.8F - f1) * f4 + f2);
    }
    a.d(0.25F * paramFloat + f3);
    f1 = at.a(b) / 5.0F;
    b.c(216.0F * paramFloat + 1080.0F * f1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */