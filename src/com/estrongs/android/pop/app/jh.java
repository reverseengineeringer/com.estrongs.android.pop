package com.estrongs.android.pop.app;

import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.ui.view.ESVideoView;

class jh
  implements Runnable
{
  jh(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void run()
  {
    if (!a.a())
    {
      if ((PopVideoPlayer.r(a).r() >= 0) && (PopVideoPlayer.C(a))) {
        ChromeCastPlayerNotificationHelper.a().b();
      }
      return;
    }
    try
    {
      if (PopVideoPlayer.a(a).isPlaying()) {
        a.f = true;
      }
      for (a.g = false;; a.g = true)
      {
        PopVideoPlayer.a(a).pause();
        return;
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */