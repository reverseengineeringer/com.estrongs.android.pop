package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;

class by
  extends Thread
{
  by(bx parambx, e parame) {}
  
  public void run()
  {
    if (b.a.e.b(b.a.c))
    {
      b.a.runOnUiThread(new bz(this));
      return;
    }
    ag.a(b.a, am.d(a.d()) + " " + b.a.getString(2131427769), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */