package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.du;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class dy
  implements MenuItem.OnMenuItemClickListener
{
  dy(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    do
    {
      return true;
      if (paramMenuItem.size() == 1)
      {
        new hc(cp.a(a), (h)paramMenuItem.get(0)).a();
        return true;
      }
    } while (paramMenuItem.size() <= 1);
    new du(cp.a(a), paramMenuItem, cp.c(a)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */