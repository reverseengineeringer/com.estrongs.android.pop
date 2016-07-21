package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.view.View;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.l;

class ko
  implements MediaPlayer.OnErrorListener
{
  ko(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    l.b(PopVideoPlayer.d(), "onError what " + paramInt1 + " extra " + paramInt2);
    if (PopVideoPlayer.b(a)) {}
    do
    {
      return true;
      PopVideoPlayer.b(a, true);
    } while (!a.a());
    if (PopVideoPlayer.s(a))
    {
      a.finish();
      return true;
    }
    paramMediaPlayer = new cv(a).a(2131231693).b(2131231692);
    if (ag.b())
    {
      paramMediaPlayer.b(2131230851, new kp(this));
      paramMediaPlayer.c(2131231157, new kq(this));
      paramMediaPlayer.c();
    }
    for (;;)
    {
      paramMediaPlayer.a(new ks(this));
      a.b.setVisibility(8);
      return true;
      paramMediaPlayer.a(2131231270, new kr(this)).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */