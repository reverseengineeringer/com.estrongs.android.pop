package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.iw;

class jg
  implements MenuItem.OnMenuItemClickListener
{
  jg(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    PopVideoPlayer.r(a).q();
    if (PopVideoPlayer.b(a)) {
      a.finish();
    }
    for (;;)
    {
      return true;
      PopVideoPlayer.y(a);
      PopVideoPlayer.z(a).d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */