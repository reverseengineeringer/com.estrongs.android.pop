package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ix;
import java.util.List;

class dn
  implements MenuItem.OnMenuItemClickListener
{
  dn(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      com.estrongs.android.ui.view.ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (paramMenuItem.size() < 1) {
      return true;
    }
    paramMenuItem = new com.estrongs.fs.b.ag(cp.a(a), paramMenuItem);
    paramMenuItem.setDescription(cp.a(a).getString(2131428478));
    new ix(cp.a(a), cp.a(a).getString(2131428480), paramMenuItem).show();
    paramMenuItem.execute();
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */