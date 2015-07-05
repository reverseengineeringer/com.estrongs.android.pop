package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class lt
  implements MediaPlayer.OnCompletionListener
{
  lt(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (StreamingMediaPlayer.a(a) == 0L) {
      return;
    }
    if ((StreamingMediaPlayer.a(a) >= 262144L) || ((StreamingMediaPlayer.a(a) > 0L) && (StreamingMediaPlayer.b(a))))
    {
      StreamingMediaPlayer.a(a, false);
      return;
    }
    if (!StreamingMediaPlayer.c(a)) {
      a.a(6);
    }
    new Thread(new lu(this)).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */