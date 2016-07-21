package com.facebook.ads.internal.view;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

class d$1
  implements MediaPlayer.OnPreparedListener
{
  d$1(d paramd1, d paramd2) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    MediaPlayer localMediaPlayer = paramMediaPlayer;
    try
    {
      if (paramMediaPlayer.isPlaying())
      {
        paramMediaPlayer.stop();
        paramMediaPlayer.release();
        localMediaPlayer = new MediaPlayer();
      }
      localMediaPlayer.setVolume(b.getVolume(), b.getVolume());
      localMediaPlayer.setLooping(false);
      localMediaPlayer.setOnSeekCompleteListener(new d.1.1(this));
      if (a.getAutoplay())
      {
        a.b();
        return;
      }
      a.c();
      return;
    }
    catch (Exception paramMediaPlayer)
    {
      paramMediaPlayer.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */