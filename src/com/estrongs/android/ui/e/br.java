package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.ae;

class br
  implements MenuItem.OnMenuItemClickListener
{
  br(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = -1;
    if (z.n) {
      i = -2;
    }
    paramMenuItem = b.b();
    paramMenuItem = new ae(FileExplorerActivity.J(), paramMenuItem, null, i);
    paramMenuItem.a(new bs(this, paramMenuItem), null, null);
    paramMenuItem.b(true);
    paramMenuItem.j();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */