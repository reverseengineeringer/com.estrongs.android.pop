package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;

class bx
  extends Thread
{
  bx(bw parambw, e parame) {}
  
  public void run()
  {
    if (b.a.e.b(b.a.c))
    {
      b.a.runOnUiThread(new by(this));
      return;
    }
    ak.a(b.a, ap.d(a.d()) + " " + b.a.getString(2131231898), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */