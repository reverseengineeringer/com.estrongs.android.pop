package com.estrongs.android.pop.app;

import com.estrongs.android.pop.m;
import com.estrongs.fs.b.ab;
import java.util.List;

class jo
  extends Thread
{
  jo(jn paramjn, List paramList) {}
  
  public void run()
  {
    ab localab = new ab(PopVideoPlayer.E(b.c.a), a, false, b.b);
    localab.setTaskDecisionListener(new m(b.c.a));
    localab.execute(false);
    b.c.a.runOnUiThread(new jp(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */