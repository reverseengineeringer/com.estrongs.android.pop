package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.view.View;
import android.widget.MediaController;

class ir
  implements MediaPlayer.OnPreparedListener
{
  ir(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    a.b.setVisibility(8);
    PopVideoPlayer.d(a, true);
    try
    {
      PopVideoPlayer.e(a).setEnabled(true);
      return;
    }
    catch (Exception paramMediaPlayer) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */