package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import com.estrongs.android.widget.RealViewSwitcher;

class bu
  implements Runnable
{
  bu(ViewImage21 paramViewImage21) {}
  
  public void run()
  {
    a.i.getCurrentView().startAnimation(a.i.getOutAnimation());
    a.b.removeCallbacks(ViewImage21.v(a));
    a.b.postDelayed(ViewImage21.v(a), ViewImage21.w(a) - 50);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */