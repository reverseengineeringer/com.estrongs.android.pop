package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import java.util.List;

class hc
  implements MenuItem.OnMenuItemClickListener
{
  hc(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return false;
    }
    aj.a(cp.a(a), paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */