package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.m;

class aq
  implements MenuItem.OnMenuItemClickListener
{
  aq(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.a(w.k(a));
    paramMenuItem = r.a();
    paramMenuItem.a(0);
    paramMenuItem.a(null);
    ad localad = ad.a(a.b);
    localad.h(null, null);
    aw localaw;
    if ((a.b instanceof FileExplorerActivity))
    {
      localaw = a.k.y();
      if (localaw != null)
      {
        w.a(a, paramMenuItem.h());
        if (!am.az(localaw.c())) {
          break label170;
        }
        localaw.g(localad.j("Market"));
      }
    }
    for (;;)
    {
      localaw.G();
      com.estrongs.fs.a.b.a().b(am.k(), null);
      if (bd.b(r.a().f())) {
        com.estrongs.fs.a.b.a().b(r.a().h(), null);
      }
      com.estrongs.fs.impl.pcs.b.a().setFileType(m.R);
      paramMenuItem = a.a();
      if (paramMenuItem != null) {
        paramMenuItem.c("Press_Logout", "Press_Logout");
      }
      return false;
      label170:
      localaw.g("pcs://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */