package com.estrongs.android.view.music;

import android.app.Activity;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.gq;

class d
  implements Runnable
{
  d(a parama, i parami) {}
  
  public void run()
  {
    try
    {
      a.d();
      if ((a == a.e(b).j().r()) && (a.c())) {
        ((Activity)a.f(b)).runOnUiThread(new e(this));
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
 * Qualified Name:     com.estrongs.android.view.music.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */