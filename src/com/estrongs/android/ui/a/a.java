package com.estrongs.android.ui.a;

import android.view.animation.Interpolator;

public class a
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return 0.0F;
    }
    if (paramFloat == 1.0F) {
      return 1.0F;
    }
    float f = 0.3F / 4.0F;
    double d1 = Math.pow(2.0D, -10.0F * paramFloat);
    double d2 = paramFloat - f;
    return (float)(Math.sin(6.283185307179586D / 0.3F * d2) * d1 + 1.0D);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */