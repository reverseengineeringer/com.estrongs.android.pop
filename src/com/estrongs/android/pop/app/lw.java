package com.estrongs.android.pop.app;

import android.app.ProgressDialog;

class lw
  implements Runnable
{
  lw(lv paramlv, int paramInt) {}
  
  public void run()
  {
    if (StreamingMediaPlayer.e(b.a)) {
      if (a == -15) {
        b.a.a(4);
      }
    }
    do
    {
      return;
      StreamingMediaPlayer.b(b.a, false);
      return;
      b.a.a(5);
    } while (StreamingMediaPlayer.f(b.a).getProgress() != 0);
    StreamingMediaPlayer.f(b.a).setMax((int)StreamingMediaPlayer.g(b.a));
    StreamingMediaPlayer.f(b.a).incrementProgressBy((int)StreamingMediaPlayer.h(b.a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */