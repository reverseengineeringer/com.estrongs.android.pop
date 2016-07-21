package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.util.List;

class et
  implements MenuItem.OnMenuItemClickListener
{
  et(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cr.a(a).size() == 0) {
      com.estrongs.android.ui.view.ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    while (cr.a(a).size() != 1) {
      return true;
    }
    paramMenuItem = ((h)cr.a(a).get(0)).getAbsolutePath();
    a locala = new a(cr.b(a), false, paramMenuItem, null, null, null);
    if (paramMenuItem.toLowerCase().endsWith(".apk")) {
      locala.a(true);
    }
    if (!(cr.b(a).O() instanceof com.estrongs.android.view.ak)) {
      locala.a(true);
    }
    locala.a();
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */