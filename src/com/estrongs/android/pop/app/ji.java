package com.estrongs.android.pop.app;

import android.os.Handler;
import android.view.View;
import com.estrongs.android.ui.view.av;

class ji
  implements av
{
  ji(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void a()
  {
    PopVideoPlayer.f(a).removeMessages(7);
    PopVideoPlayer.f(a).sendMessageDelayed(PopVideoPlayer.f(a).obtainMessage(7), 2000L);
    PopVideoPlayer.d(a, false);
  }
  
  public void b()
  {
    PopVideoPlayer.d(a, true);
    PopVideoPlayer.f(a).removeMessages(7);
    a.b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */