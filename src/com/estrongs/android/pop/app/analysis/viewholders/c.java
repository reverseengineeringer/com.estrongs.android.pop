package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

class c
  implements Animator.AnimatorListener
{
  c(AnalysisLoadingView paramAnalysisLoadingView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {}
  
  public void onAnimationRepeat(Animator paramAnimator)
  {
    paramAnimator = a;
    if (!AnalysisLoadingView.access$000(a)) {}
    for (boolean bool = true;; bool = false)
    {
      AnalysisLoadingView.access$002(paramAnimator, bool);
      return;
    }
  }
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */