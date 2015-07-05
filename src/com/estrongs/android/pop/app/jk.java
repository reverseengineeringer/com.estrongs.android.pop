package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.iw;
import com.estrongs.android.ui.view.ESVideoView;

class jk
  implements MenuItem.OnMenuItemClickListener
{
  jk(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (PopVideoPlayer.d(a))
    {
      PopVideoPlayer.d(a, false);
      PopVideoPlayer.a(a).a(a.getIntent().getData());
      PopVideoPlayer.c(a);
    }
    PopVideoPlayer.D(a).d();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */