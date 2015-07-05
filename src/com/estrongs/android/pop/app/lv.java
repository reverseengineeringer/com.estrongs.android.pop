package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.os.Handler;

class lv
  implements MediaPlayer.OnErrorListener
{
  lv(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    StreamingMediaPlayer.b(a, true);
    StreamingMediaPlayer.i(a).post(new lw(this, paramInt2));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */