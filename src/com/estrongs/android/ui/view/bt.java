package com.estrongs.android.ui.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.ScaleAnimation;

class bt
  implements View.OnClickListener
{
  bt(PopMultiWindowGrid paramPopMultiWindowGrid) {}
  
  public void onClick(View paramView)
  {
    a.setVisibility(4);
    paramView = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    paramView.setDuration(300L);
    a.setAnimation(paramView);
    paramView.setAnimationListener(new bu(this));
    paramView.start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */