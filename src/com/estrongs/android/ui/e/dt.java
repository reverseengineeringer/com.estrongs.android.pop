package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

class dt
  implements MenuItem.OnMenuItemClickListener
{
  dt(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (paramMenuItem.size() != 1) {
      return true;
    }
    paramMenuItem = (h)paramMenuItem.get(0);
    ad.a(cp.a(a)).a(paramMenuItem.getPath(), am.c(paramMenuItem.getPath()));
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */