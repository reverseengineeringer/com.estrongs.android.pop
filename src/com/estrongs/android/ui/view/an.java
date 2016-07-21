package com.estrongs.android.ui.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.view.SurfaceHolder;

class an
  implements MediaPlayer.OnVideoSizeChangedListener
{
  an(ESVideoView paramESVideoView) {}
  
  public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    try
    {
      ESVideoView.a(a, paramMediaPlayer.getVideoWidth());
      ESVideoView.b(a, paramMediaPlayer.getVideoHeight());
      if ((ESVideoView.a(a) != 0) && (ESVideoView.b(a) != 0)) {
        a.getHolder().setFixedSize(ESVideoView.a(a), ESVideoView.b(a));
      }
      return;
    }
    catch (Exception paramMediaPlayer)
    {
      paramMediaPlayer.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */