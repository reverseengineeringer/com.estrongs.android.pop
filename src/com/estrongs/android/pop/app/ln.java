package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

class ln
  implements MediaPlayer.OnPreparedListener
{
  ln(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    StreamingMediaPlayer.a(a, paramMediaPlayer);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */