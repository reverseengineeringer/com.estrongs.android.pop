package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class gs
  implements MenuItem.OnMenuItemClickListener
{
  gs(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return true;
    }
    if (paramMenuItem.size() == 1) {
      new Thread(new gt(this, ((h)paramMenuItem.get(0)).getAbsolutePath())).start();
    }
    cp.a(a).s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */