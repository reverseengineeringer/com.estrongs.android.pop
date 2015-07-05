package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import com.estrongs.android.ui.view.ESVideoView;
import java.io.File;

class ls
  implements Runnable
{
  ls(StreamingMediaPlayer paramStreamingMediaPlayer, boolean paramBoolean) {}
  
  public void run()
  {
    if ((StreamingMediaPlayer.c(b)) && (!StreamingMediaPlayer.b(b))) {}
    for (;;)
    {
      return;
      if ((StreamingMediaPlayer.f(b) != null) && (StreamingMediaPlayer.f(b).isShowing())) {
        b.dismissDialog(5);
      }
      if ((StreamingMediaPlayer.o(b) != null) && (StreamingMediaPlayer.o(b).isShowing())) {
        b.dismissDialog(6);
      }
      boolean bool = StreamingMediaPlayer.q(b).isPlaying();
      int i = StreamingMediaPlayer.q(b).getCurrentPosition();
      if (bool) {
        StreamingMediaPlayer.q(b).pause();
      }
      if ((a) && (StreamingMediaPlayer.e(b))) {
        StreamingMediaPlayer.q(b).b();
      }
      StreamingMediaPlayer.q(b).a(StreamingMediaPlayer.p(b).getAbsolutePath());
      StreamingMediaPlayer.q(b).seekTo(i);
      if (StreamingMediaPlayer.q(b).getDuration() - StreamingMediaPlayer.q(b).getCurrentPosition() <= 0) {}
      for (i = 1; (a) || (bool) || (i != 0); i = 0)
      {
        StreamingMediaPlayer.q(b).start();
        StreamingMediaPlayer.b(b, 0L);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */