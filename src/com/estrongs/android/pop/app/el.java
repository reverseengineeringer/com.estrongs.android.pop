package com.estrongs.android.pop.app;

import android.net.LocalSocket;
import com.estrongs.android.nativetool.c;

class el
  implements Runnable
{
  el(ek paramek) {}
  
  public void run()
  {
    PopAudioPlayer.l(a.a.a);
    try
    {
      c.a().close();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */