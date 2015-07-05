package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.estrongs.android.pop.app.a.am;

class l
  implements MediaPlayer.OnCompletionListener
{
  l(AudioPlayerService paramAudioPlayerService) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (AudioPlayerService.a(a) != null) {
      AudioPlayerService.a(a).f(AudioPlayerService.b(a).f());
    }
    if (!AudioPlayerService.a(a, paramMediaPlayer))
    {
      int i = AudioPlayerService.c(a);
      AudioPlayerService.b(a).d(i);
      a.d(i);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */