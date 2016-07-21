package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import com.estrongs.android.ui.view.ESVideoView;
import java.io.File;

class mi
  implements Runnable
{
  mi(StreamingMediaPlayer paramStreamingMediaPlayer) {}
  
  public void run()
  {
    if ((StreamingMediaPlayer.o(a) != null) && (StreamingMediaPlayer.o(a).isShowing())) {
      a.dismissDialog(6);
    }
    StreamingMediaPlayer.q(a).setVideoPath(StreamingMediaPlayer.p(a).getAbsolutePath());
    StreamingMediaPlayer.r(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */