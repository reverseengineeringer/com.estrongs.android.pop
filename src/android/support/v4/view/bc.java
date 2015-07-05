package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class bc
{
  public static int a(View paramView)
  {
    return paramView.getLayerType();
  }
  
  static long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */