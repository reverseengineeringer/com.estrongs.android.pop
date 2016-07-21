package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

class as
  implements MediaPlayer.OnBufferingUpdateListener
{
  as(ESVideoView paramESVideoView) {}
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    ESVideoView.e(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */