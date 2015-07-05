package com.estrongs.android.pop.app;

import com.estrongs.android.pop.app.a.ak;

class fc
  implements Runnable
{
  fc(PopAudioPlayer paramPopAudioPlayer, ak paramak) {}
  
  public void run()
  {
    try
    {
      a.d();
      if ((a == PopAudioPlayer.a(b).r()) && (a.c())) {
        b.runOnUiThread(new fd(this));
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
 * Qualified Name:     com.estrongs.android.pop.app.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */