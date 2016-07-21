package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.estrongs.android.pop.view.a;

class kn
  implements MediaPlayer.OnCompletionListener
{
  kn(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (!a.a.equals("Spreadtrum_cmcc"))
    {
      PopVideoPlayer.m(a);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */