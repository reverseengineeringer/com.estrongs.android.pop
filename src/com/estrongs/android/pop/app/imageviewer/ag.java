package com.estrongs.android.pop.app.imageviewer;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import com.estrongs.android.pop.app.imageviewer.gallery.c;

final class ag
  extends Thread
{
  ag(c paramc, Handler paramHandler, Activity paramActivity, View paramView) {}
  
  public void run()
  {
    a.p();
    a.j();
    b.post(new ah(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */