package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class dv
  implements MenuItem.OnMenuItemClickListener
{
  dv(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (paramMenuItem.size() < 1) {
      return true;
    }
    paramMenuItem = (h)paramMenuItem.get(0);
    ie.a(a.b, paramMenuItem.getAbsolutePath(), paramMenuItem.getName(), paramMenuItem);
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */