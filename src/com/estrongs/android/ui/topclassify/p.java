package com.estrongs.android.ui.topclassify;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

class p
  implements Animator.AnimatorListener
{
  p(ExpandableLayout paramExpandableLayout) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ExpandableLayout.a(a, false);
    if (ExpandableLayout.b(a) != null) {
      ExpandableLayout.b(a).c();
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    ExpandableLayout.a(a, true);
    if (ExpandableLayout.b(a) != null) {
      ExpandableLayout.b(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */