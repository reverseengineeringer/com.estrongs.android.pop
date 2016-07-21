package com.facebook.ads;

import android.view.animation.Animation;

class AdChoicesView$3$1
  implements Runnable
{
  AdChoicesView$3$1(AdChoicesView.3 param3) {}
  
  public void run()
  {
    if (!AdChoicesView.a(a.c)) {
      return;
    }
    AdChoicesView.a(a.c, false);
    AdChoicesView.3.1.1 local1 = new AdChoicesView.3.1.1(this);
    local1.setDuration(300L);
    local1.setFillAfter(true);
    a.c.startAnimation(local1);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */