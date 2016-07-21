package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

class ea
  implements MenuItem.OnMenuItemClickListener
{
  ea(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    while (paramMenuItem.size() != 1) {
      return true;
    }
    paramMenuItem = (h)paramMenuItem.get(0);
    ad.a(cr.b(a)).a(paramMenuItem.getPath(), ap.c(paramMenuItem.getPath()));
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */