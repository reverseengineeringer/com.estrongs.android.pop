package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.os.Handler;

class g
  implements Animator.AnimatorListener
{
  g(AnalysisResultGeneralArcView paramAnalysisResultGeneralArcView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!AnalysisResultGeneralArcView.access$800(a)) {
      AnalysisResultGeneralArcView.access$1100(a).postDelayed(AnalysisResultGeneralArcView.access$900(a), AnalysisResultGeneralArcView.access$1000(a));
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    if (AnalysisResultGeneralArcView.access$500(a))
    {
      AnalysisResultGeneralArcView.access$602(a, 180.0F);
      AnalysisResultGeneralArcView.access$702(a, 360.0F);
      paramAnimator = a;
      if (AnalysisResultGeneralArcView.access$500(a)) {
        break label76;
      }
    }
    label76:
    for (boolean bool = true;; bool = false)
    {
      AnalysisResultGeneralArcView.access$502(paramAnimator, bool);
      return;
      AnalysisResultGeneralArcView.access$602(a, 0.0F);
      AnalysisResultGeneralArcView.access$702(a, 180.0F);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */