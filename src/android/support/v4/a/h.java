package android.support.v4.a;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;

class h
  implements c
{
  private TimeInterpolator a;
  
  public l a()
  {
    return new j(ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }));
  }
  
  public void a(View paramView)
  {
    if (a == null) {
      a = new ValueAnimator().getInterpolator();
    }
    paramView.animate().setInterpolator(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */