package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.ad;

class bf
  implements MenuItem.OnMenuItemClickListener
{
  bf(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = -1;
    if (z.n) {
      i = -2;
    }
    paramMenuItem = b.b();
    paramMenuItem = new ad(FileExplorerActivity.X(), paramMenuItem, null, i);
    paramMenuItem.a(new bg(this, paramMenuItem), null, null);
    paramMenuItem.b(true);
    paramMenuItem.j();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */