package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.e;

class gc
  implements MenuItem.OnMenuItemClickListener
{
  gc(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = (e)cp.a(a).y();
    if (paramMenuItem != null) {
      paramMenuItem.a(cp.b(a), false);
    }
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */