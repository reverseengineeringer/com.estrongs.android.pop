package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.impl.b.d;
import java.util.List;

class fv
  implements MenuItem.OnMenuItemClickListener
{
  fv(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      cr.b(a).B();
      return true;
      if ((paramMenuItem.size() >= 1) && ((paramMenuItem.get(0) instanceof d))) {
        cr.b(a).ag().b(cr.b(a), paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */