package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

class k
  implements Animator.AnimatorListener
{
  k(AnalysisResultGeneralPieView paramAnalysisResultGeneralPieView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (AnalysisResultGeneralPieView.access$000(a) != null) {
      a.setColorAndData(AnalysisResultGeneralPieView.access$000(a), AnalysisResultGeneralPieView.access$100(a), AnalysisResultGeneralPieView.access$200(a));
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */