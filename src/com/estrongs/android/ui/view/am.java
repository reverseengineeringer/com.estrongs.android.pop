package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.widget.MediaController;

class am
  implements MediaPlayer.OnSeekCompleteListener
{
  am(ESVideoView paramESVideoView) {}
  
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    ESVideoView.d(a, false);
    if (ESVideoView.k(a) != null) {
      ESVideoView.k(a).b();
    }
    if ((ESVideoView.i(a) == 3) && (!a.isPlaying()))
    {
      a.start();
      if (ESVideoView.e(a) != null) {
        ESVideoView.e(a).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */