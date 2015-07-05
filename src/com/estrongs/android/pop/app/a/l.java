package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.app.PopAudioPlayer;

class l
  extends Thread
{
  l(e parame, String paramString, int paramInt) {}
  
  public void run()
  {
    if (!c.a(a, b))
    {
      e.a(c).runOnUiThread(new m(this));
      return;
    }
    e.a(c).runOnUiThread(new n(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */