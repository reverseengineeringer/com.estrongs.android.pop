package com.facebook.ads;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class AdChoicesView$3
  implements Animation.AnimationListener
{
  AdChoicesView$3(AdChoicesView paramAdChoicesView, int paramInt1, int paramInt2) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    new Handler().postDelayed(new AdChoicesView.3.1(this), 3000L);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */