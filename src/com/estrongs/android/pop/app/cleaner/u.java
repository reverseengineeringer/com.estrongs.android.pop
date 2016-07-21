package com.estrongs.android.pop.app.cleaner;

import android.view.View;
import android.view.animation.Animation;
import com.estrongs.android.widget.a;

final class u
  extends a
{
  u(View paramView1, View paramView2, Runnable paramRunnable) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    b.setVisibility(4);
    a.setVisibility(0);
    c.run();
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */