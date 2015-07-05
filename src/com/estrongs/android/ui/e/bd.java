package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;

class bd
  implements MenuItem.OnMenuItemClickListener
{
  bd(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((a.k.y() == null) || (!(a.k.y() instanceof h))) {}
    do
    {
      return true;
      paramMenuItem = a.k.y();
    } while (paramMenuItem == null);
    new a(a.k, (h)paramMenuItem).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */