package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

class f
  implements Animator.AnimatorListener
{
  f(AnalysisResultGeneralArcView paramAnalysisResultGeneralArcView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (AnalysisResultGeneralArcView.access$100(a) != null)
    {
      AnalysisResultGeneralArcView.access$202(a, AnalysisResultGeneralArcView.access$300(a));
      a.setColorAndData(AnalysisResultGeneralArcView.access$100(a), AnalysisResultGeneralArcView.access$400(a), -1);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    AnalysisResultGeneralArcView.access$000(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */