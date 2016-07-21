package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.ad;

class hv
  implements MenuItem.OnMenuItemClickListener
{
  hv(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = -1;
    if (z.n) {
      i = -2;
    }
    paramMenuItem = new ad(FileExplorerActivity.X(), "adb://", null, i);
    new hw(this, paramMenuItem);
    paramMenuItem.a(null, null, new hx(this, paramMenuItem));
    paramMenuItem.b(true);
    paramMenuItem.j();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */