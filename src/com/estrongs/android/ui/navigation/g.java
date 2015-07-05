package com.estrongs.android.ui.navigation;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.dialog.ga;
import com.estrongs.android.ui.view.ag;

class g
  implements MenuItem.OnMenuItemClickListener
{
  g(a parama) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (e.c() >= 12)
    {
      ag.a(a.b(a), 2131428177, 0);
      return false;
    }
    new ga(a.b(a)).a(new h(this)).a();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */