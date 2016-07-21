package com.estrongs.android.pop.app;

import com.estrongs.android.pop.app.c.i;

class fq
  implements Runnable
{
  fq(PopAudioPlayer paramPopAudioPlayer, i parami) {}
  
  public void run()
  {
    try
    {
      a.d();
      if ((a == PopAudioPlayer.a(b).r()) && (a.c())) {
        b.runOnUiThread(new fr(this));
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */