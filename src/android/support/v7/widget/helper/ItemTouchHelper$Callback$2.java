package android.support.v7.widget.helper;

import android.view.animation.Interpolator;

final class ItemTouchHelper$Callback$2
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.Callback.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */