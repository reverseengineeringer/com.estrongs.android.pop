package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.ju;

class jv
  implements MenuItem.OnMenuItemClickListener
{
  jv(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    PopVideoPlayer.r(a).q();
    if (PopVideoPlayer.b(a)) {
      a.finish();
    }
    for (;;)
    {
      return true;
      PopVideoPlayer.z(a);
      PopVideoPlayer.A(a).d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */