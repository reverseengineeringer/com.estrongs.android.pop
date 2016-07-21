package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.ag;
import com.estrongs.android.pop.app.x;

class bj
  implements MenuItem.OnMenuItemClickListener
{
  bj(ViewImage21 paramViewImage21) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (ViewImage21.l(a).p())
    {
      ViewImage21.n(a);
      a.a(a.c, true);
    }
    for (;;)
    {
      ViewImage21.b(a, a.m);
      return true;
      if (ViewImage21.o(a) == null) {
        ViewImage21.p(a);
      }
      ViewImage21.o(a).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */