package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.ak;

class gj
  implements MenuItem.OnMenuItemClickListener
{
  gj(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = (ak)cr.b(a).O();
    if (paramMenuItem != null) {
      paramMenuItem.a(cr.a(a), false);
    }
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */