package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.impl.l.a;
import java.util.List;

class gv
  implements MenuItem.OnMenuItemClickListener
{
  gv(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      cp.a(a).s();
      return false;
      a.a(cp.a(a), paramMenuItem, new gw(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */