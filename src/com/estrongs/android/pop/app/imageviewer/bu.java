package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.f;

class bu
  implements Runnable
{
  bu(ViewImage21 paramViewImage21) {}
  
  public void run()
  {
    if (a.c < a.e.b() - 1)
    {
      ViewImage21.i(a).setSelection(a.c + 1);
      a.a(true);
      return;
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */