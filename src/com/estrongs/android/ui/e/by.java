package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.dialog.ga;
import com.estrongs.android.ui.view.ag;

class by
  implements MenuItem.OnMenuItemClickListener
{
  by(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (e.c() >= 12)
    {
      ag.a(a.k, 2131428177, 0);
      return false;
    }
    new ga(a.k).a(new bz(this)).a();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */