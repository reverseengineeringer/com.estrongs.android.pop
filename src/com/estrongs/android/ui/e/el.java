package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class el
  implements MenuItem.OnMenuItemClickListener
{
  el(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cp.b(a).size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (cp.b(a).size() != 1) {
      return true;
    }
    paramMenuItem = ((h)cp.b(a).get(0)).getAbsolutePath();
    new a(cp.a(a), false, paramMenuItem, null, null, null).a();
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */