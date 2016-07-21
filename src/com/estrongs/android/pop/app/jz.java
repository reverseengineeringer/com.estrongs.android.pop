package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.e.ju;
import com.estrongs.android.ui.view.ESVideoView;

class jz
  implements MenuItem.OnMenuItemClickListener
{
  jz(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (PopVideoPlayer.d(a))
    {
      PopVideoPlayer.d(a, false);
      PopVideoPlayer.a(a).setVideoURI(a.getIntent().getData());
      PopVideoPlayer.c(a);
      PopVideoPlayer.a(a).seekTo(0);
    }
    PopVideoPlayer.E(a).d();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */