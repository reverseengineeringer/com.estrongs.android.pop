package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import com.estrongs.android.ui.view.ESVideoView;
import java.io.File;

class lr
  implements Runnable
{
  lr(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public void run()
  {
    if ((StreamingMediaPlayer.o(a) != null) && (StreamingMediaPlayer.o(a).isShowing())) {
      a.dismissDialog(6);
    }
    StreamingMediaPlayer.q(a).a(StreamingMediaPlayer.p(a).getAbsolutePath());
    StreamingMediaPlayer.r(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */