package com.estrongs.android.pop.app;

import android.net.LocalSocket;
import com.estrongs.android.nativetool.c;

class fx
  implements Runnable
{
  fx(fw paramfw) {}
  
  public void run()
  {
    PopAudioPlayer.f(a.a.a);
    try
    {
      c.a().close();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */