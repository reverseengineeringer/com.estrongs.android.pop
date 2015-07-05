package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class jy
  implements MediaPlayer.OnCompletionListener
{
  jy(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (!"Market".equals("Spreadtrum_cmcc"))
    {
      PopVideoPlayer.m(a);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */