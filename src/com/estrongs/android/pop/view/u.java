package com.estrongs.android.pop.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.estrongs.android.ui.guesture.ESGestureCtrl;

class u
  implements Runnable
{
  u(FileExplorerActivity paramFileExplorerActivity, View paramView) {}
  
  public void run()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(b, 2130968604);
    localAnimation.setDuration(500L);
    a.startAnimation(localAnimation);
    FileExplorerActivity.I(b).removeView(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */