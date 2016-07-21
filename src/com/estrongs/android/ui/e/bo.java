package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.finder.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.cr;

class bo
  implements MenuItem.OnMenuItemClickListener
{
  bo(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    cr localcr = m.a(a).O();
    paramMenuItem = "";
    if (localcr != null) {
      paramMenuItem = localcr.c();
    }
    a.a().a(m.a(a), paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */