package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.MediaController;

class al
  implements MediaPlayer.OnCompletionListener
{
  al(ESVideoView paramESVideoView) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    ESVideoView.c(a, 5);
    ESVideoView.d(a, 5);
    if (ESVideoView.e(a) != null) {
      ESVideoView.e(a).hide();
    }
    if (ESVideoView.j(a) != null) {
      ESVideoView.j(a).onCompletion(ESVideoView.d(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */