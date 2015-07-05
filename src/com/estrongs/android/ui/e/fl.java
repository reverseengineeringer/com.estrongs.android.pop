package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.du;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class fl
  implements MenuItem.OnMenuItemClickListener
{
  fl(cp paramcp) {}
  
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
        if ((paramMenuItem.get(0) instanceof com.estrongs.fs.impl.b.c))
        {
          paramMenuItem = ((com.estrongs.fs.impl.b.c)paramMenuItem.get(0)).c();
          cp.a(a).Q().a(paramMenuItem);
          return true;
        }
        new hc(cp.a(a), (h)paramMenuItem.get(0)).a();
        return true;
      }
    } while ((paramMenuItem.get(0) instanceof com.estrongs.fs.impl.b.c));
    new du(cp.a(a), paramMenuItem, cp.c(a)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */