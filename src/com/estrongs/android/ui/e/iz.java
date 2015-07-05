package com.estrongs.android.ui.e;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class iz
  implements Animation.AnimationListener
{
  iz(iw paramiw) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    iw.a(a, true);
    if (iw.b(a) != null) {
      iw.b(a).a(paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */