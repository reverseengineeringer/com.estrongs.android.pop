package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;
import java.util.List;

class hf
  implements MenuItem.OnMenuItemClickListener
{
  hf(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return true;
    }
    if (paramMenuItem.size() == 1)
    {
      paramMenuItem = ((h)paramMenuItem.get(0)).getAbsolutePath();
      aj.b(cp.a(a), paramMenuItem);
      paramMenuItem = cp.a(a).y();
      if ((paramMenuItem != null) && (!paramMenuItem.o())) {
        paramMenuItem.b(true);
      }
    }
    cp.a(a).s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */