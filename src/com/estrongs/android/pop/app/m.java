package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.estrongs.android.pop.app.a.am;

class m
  implements MediaPlayer.OnErrorListener
{
  m(AudioPlayerService paramAudioPlayerService) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramInt1 = AudioPlayerService.b(a).f();
    AudioPlayerService.b(a).a(paramInt1, false);
    a.t();
    if (AudioPlayerService.a(a) != null) {
      AudioPlayerService.a(a).g(paramInt1);
    }
    while (AudioPlayerService.a(a, paramMediaPlayer)) {
      return true;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */