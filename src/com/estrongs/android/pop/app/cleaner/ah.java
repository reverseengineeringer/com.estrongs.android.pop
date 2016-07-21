package com.estrongs.android.pop.app.cleaner;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.ArrayList;

class ah
  implements Animation.AnimationListener
{
  ah(ag paramag) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ab.c(a.c).remove(a.a);
    if (ab.c(a.c).isEmpty()) {
      ab.a(a.c, true);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */