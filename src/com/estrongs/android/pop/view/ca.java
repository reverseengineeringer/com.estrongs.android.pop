package com.estrongs.android.pop.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.estrongs.android.ui.drag.DragLayer;

class ca
  implements Animation.AnimationListener
{
  ca(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (FileExplorerActivity.j(a) != null) {
      FileExplorerActivity.j(a).setVisibility(8);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */