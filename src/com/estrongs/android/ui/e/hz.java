package com.estrongs.android.ui.e;

import com.estrongs.android.pop.app.PopAudioPlayer;

class hz
  extends Thread
{
  hz(hl paramhl, String paramString, int paramInt) {}
  
  public void run()
  {
    if (!c.a(a, b))
    {
      hl.a(c).runOnUiThread(new ia(this));
      return;
    }
    hl.a(c).runOnUiThread(new ib(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */