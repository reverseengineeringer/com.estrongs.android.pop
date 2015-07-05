package android.support.v4.app;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class p
  implements Animation.AnimationListener
{
  p(n paramn, Fragment paramFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (a.b != null)
    {
      a.b = null;
      b.a(a, a.c, 0, 0, false);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.v4.app.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */