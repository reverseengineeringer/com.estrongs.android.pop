package android.support.v4.a;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

class i
  implements Animator.AnimatorListener
{
  final b a;
  final l b;
  
  public i(b paramb, l paraml)
  {
    a = paramb;
    b = paraml;
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a.onAnimationCancel(b);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.onAnimationEnd(b);
  }
  
  public void onAnimationRepeat(Animator paramAnimator)
  {
    a.onAnimationRepeat(b);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.onAnimationStart(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */