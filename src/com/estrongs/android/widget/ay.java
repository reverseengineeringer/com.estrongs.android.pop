package com.estrongs.android.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ay
  implements Animation.AnimationListener
{
  ay(aw paramaw) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    aw.a(a, false);
    a.g();
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    aw.a(a, true);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    aw.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */