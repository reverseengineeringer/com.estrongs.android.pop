package com.estrongs.android.view;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.ScaleAnimation;
import com.estrongs.android.widget.HeaderGridView;

class bm
  implements Runnable
{
  bm(aw paramaw, int paramInt) {}
  
  public void run()
  {
    int j = b.g.getChildCount();
    int k = b.g.getFirstVisiblePosition();
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        View localView = b.g.getChildAt(i);
        if ((localView != null) && (k + i == a))
        {
          ScaleAnimation localScaleAnimation = new ScaleAnimation(2.0F, 1.0F, 2.0F, 1.0F, 1, 0.5F, 1, 0.5F);
          localScaleAnimation.setDuration(500L);
          localScaleAnimation.setInterpolator(new AccelerateInterpolator());
          localView.startAnimation(localScaleAnimation);
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */