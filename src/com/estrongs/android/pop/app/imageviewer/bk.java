package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.r;

class bk
  implements MenuItem.OnMenuItemClickListener
{
  bk(ViewImage21 paramViewImage21) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (ViewImage21.k(a).p())
    {
      ViewImage21.m(a);
      a.a(a.c, true);
    }
    for (;;)
    {
      ViewImage21.b(a, a.m);
      return true;
      if (ViewImage21.n(a) == null) {
        ViewImage21.o(a);
      }
      ViewImage21.n(a).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */