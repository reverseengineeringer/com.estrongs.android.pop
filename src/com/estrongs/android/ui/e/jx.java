package com.estrongs.android.ui.e;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class jx
  implements Animation.AnimationListener
{
  jx(ju paramju) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ju.a(a, true);
    if (ju.b(a) != null) {
      ju.b(a).a(paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */