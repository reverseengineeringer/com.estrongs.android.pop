package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.widget.MediaController;
import com.estrongs.android.util.l;

class ar
  implements MediaPlayer.OnErrorListener
{
  ar(ESVideoView paramESVideoView) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    l.b(ESVideoView.l(a), "Error: " + paramInt1 + "," + paramInt2);
    ESVideoView.c(a, -1);
    ESVideoView.d(a, -1);
    if (ESVideoView.e(a) != null) {
      ESVideoView.e(a).hide();
    }
    return (ESVideoView.m(a) != null) && (ESVideoView.m(a).onError(ESVideoView.d(a), paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */