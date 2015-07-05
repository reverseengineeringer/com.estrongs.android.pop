package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.util.Log;
import android.view.View;
import com.estrongs.android.ui.dialog.ct;

class jz
  implements MediaPlayer.OnErrorListener
{
  jz(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.d(PopVideoPlayer.d(), "onError what " + paramInt1 + " extra " + paramInt2);
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
    paramMediaPlayer = new ct(a).a(2131427805).b(2131427806);
    if (aa.b())
    {
      paramMediaPlayer.b(2131427363, new ka(this));
      paramMediaPlayer.c(2131428522, new kb(this));
      paramMediaPlayer.c();
    }
    for (;;)
    {
      paramMediaPlayer.a(new kd(this));
      a.b.setVisibility(8);
      return true;
      paramMediaPlayer.a(2131427339, new kc(this)).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */