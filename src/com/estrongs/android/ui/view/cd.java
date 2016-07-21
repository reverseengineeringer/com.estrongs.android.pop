package com.estrongs.android.ui.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class cd
  implements Animation.AnimationListener
{
  cd(cc paramcc) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    PopMultiWindowGrid.a(a.a, 2, PopMultiWindowGrid.b(a.a));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */