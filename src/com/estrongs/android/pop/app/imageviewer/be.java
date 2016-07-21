package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class be
  implements MenuItem.OnMenuItemClickListener
{
  be(ViewImage21 paramViewImage21) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.b.removeCallbacks(ViewImage21.h(a));
    ViewImage21.e(a);
    a.a();
    if (a.g != null) {
      a.g.a(90);
    }
    ViewImage21.b(a, a.m);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */