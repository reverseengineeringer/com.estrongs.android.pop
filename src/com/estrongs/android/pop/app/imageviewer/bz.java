package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.f;

class bz
  implements Runnable
{
  bz(by paramby) {}
  
  public void run()
  {
    if (a.b.a.g != null) {
      a.b.a.g.e();
    }
    if (a.b.a.e.b() == 0)
    {
      a.b.a.finish();
      return;
    }
    a.b.a.a(a.b.a.c, ViewImage21.c(a.b.a));
    ViewImage21.g(a.b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */