package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class ao
  extends AnimatorListenerAdapter
{
  private boolean d;
  
  ao(an paraman, boolean paramBoolean, as paramas) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    an.a(c, false);
    d = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    an.a(c, false);
    if (!d)
    {
      c.k.a(8, a);
      if (b != null) {
        b.b();
      }
    }
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    an.a(c, true);
    d = false;
    c.k.a(0, a);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */