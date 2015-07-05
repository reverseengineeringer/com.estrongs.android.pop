package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.view.SurfaceHolder;
import android.widget.MediaController;

class ak
  implements MediaPlayer.OnPreparedListener
{
  ak(ESVideoView paramESVideoView) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    ESVideoView.c(a, 2);
    ESVideoView.a(a, ESVideoView.b(a, ESVideoView.c(a, true)));
    if (ESVideoView.c(a) != null) {
      ESVideoView.c(a).onPrepared(ESVideoView.d(a));
    }
    if (ESVideoView.e(a) != null) {
      ESVideoView.e(a).setEnabled(true);
    }
    ESVideoView.a(a, paramMediaPlayer.getVideoWidth());
    ESVideoView.b(a, paramMediaPlayer.getVideoHeight());
    int i = ESVideoView.f(a);
    if (i != 0) {
      a.seekTo(i);
    }
    if ((ESVideoView.a(a) != 0) && (ESVideoView.b(a) != 0))
    {
      a.getHolder().setFixedSize(ESVideoView.a(a), ESVideoView.b(a));
      if ((ESVideoView.g(a) == ESVideoView.a(a)) && (ESVideoView.h(a) == ESVideoView.b(a)))
      {
        if (ESVideoView.i(a) != 3) {
          break label245;
        }
        a.start();
        if (ESVideoView.e(a) != null) {
          ESVideoView.e(a).show();
        }
      }
    }
    label245:
    while (ESVideoView.i(a) != 3)
    {
      do
      {
        return;
      } while ((a.isPlaying()) || ((i == 0) && (a.getCurrentPosition() <= 0)) || (ESVideoView.e(a) == null));
      ESVideoView.e(a).show(0);
      return;
    }
    a.start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */