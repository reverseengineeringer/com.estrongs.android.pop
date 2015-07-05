package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import java.util.List;

class ge
  implements MenuItem.OnMenuItemClickListener
{
  ge(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (paramMenuItem.size() != 1) {
      return true;
    }
    String str = ((com.estrongs.fs.h)paramMenuItem.get(0)).getAbsolutePath();
    paramMenuItem = str;
    if (!com.estrongs.fs.impl.local.h.h(str)) {
      paramMenuItem = am.bk(str);
    }
    cp.a(a).b(paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */