package com.estrongs.android.pop.app.imageviewer;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.imageviewer.gallery.f;

class bd
  implements MenuItem.OnMenuItemClickListener
{
  bd(ViewImage21 paramViewImage21) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.b.removeCallbacks(ViewImage21.h(a));
    ViewImage21.e(a);
    a.a();
    paramMenuItem = a.e.a(a.c);
    if (paramMenuItem != null)
    {
      ae.a(a, a.l, paramMenuItem);
      ViewImage21.b(a, a.m);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */