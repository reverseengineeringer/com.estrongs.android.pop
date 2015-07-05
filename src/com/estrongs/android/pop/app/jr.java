package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.iw;

class jr
  implements MenuItem.OnMenuItemClickListener
{
  jr(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    PopVideoPlayer.c(a, true);
    PopVideoPlayer.D(a).d();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */