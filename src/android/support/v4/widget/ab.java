package android.support.v4.widget;

import android.view.animation.Interpolator;

final class ab
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */