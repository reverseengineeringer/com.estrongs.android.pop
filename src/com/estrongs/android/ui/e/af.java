package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.fs.w;

class af
  implements MenuItem.OnMenuItemClickListener
{
  af(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m.a(a, m.j(a));
    paramMenuItem = u.a();
    paramMenuItem.a(0);
    paramMenuItem.a(null);
    ad localad = ad.a(m.a(a));
    localad.h(null, null);
    cr localcr;
    if ((m.a(a) instanceof FileExplorerActivity))
    {
      localcr = m.a(a).O();
      if (localcr != null)
      {
        m.a(a, paramMenuItem.h());
        if (!ap.aJ(localcr.c())) {
          break label155;
        }
        localcr.j(localad.j(a.a));
      }
    }
    for (;;)
    {
      localcr.X();
      com.estrongs.fs.a.b.a().b(ap.k(), null);
      if (bk.b(u.a().f())) {
        com.estrongs.fs.a.b.a().b(u.a().h(), null);
      }
      com.estrongs.fs.impl.pcs.b.a().setFileType(w.Q);
      return false;
      label155:
      localcr.j("pcs://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */