package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;

class bw
  implements Runnable
{
  bw(ViewImage21 paramViewImage21) {}
  
  public void run()
  {
    e locale = a.e.a(a.c);
    ViewImage21.f(a).b(locale);
    new bx(this, locale).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */