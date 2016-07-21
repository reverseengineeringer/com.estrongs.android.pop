package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.dx;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class ft
  implements MenuItem.OnMenuItemClickListener
{
  ft(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    do
    {
      return true;
      if (paramMenuItem.size() == 1)
      {
        if ((paramMenuItem.get(0) instanceof com.estrongs.fs.impl.b.d))
        {
          paramMenuItem = ((com.estrongs.fs.impl.b.d)paramMenuItem.get(0)).h();
          c.a(cr.b(a), paramMenuItem);
          return true;
        }
        if ((paramMenuItem.get(0) instanceof com.estrongs.fs.impl.c.d))
        {
          paramMenuItem = get0a;
          c.a(cr.b(a), paramMenuItem);
          return true;
        }
        new hf(cr.b(a), (h)paramMenuItem.get(0)).a();
        return true;
      }
    } while ((paramMenuItem.get(0) instanceof com.estrongs.fs.impl.b.d));
    new dx(cr.b(a), paramMenuItem, cr.c(a)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */