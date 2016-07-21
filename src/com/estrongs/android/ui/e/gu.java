package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import java.util.List;

class gu
  implements MenuItem.OnMenuItemClickListener
{
  gu(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return true;
    }
    String str = cr.c(a);
    if ((ap.aQ(str)) || (ap.aY(str)))
    {
      cr.b(a).a(cr.b(a).getString(2131230866), paramMenuItem, false);
      return true;
    }
    paramMenuItem = new gv(this, paramMenuItem);
    int i = -1;
    str = b.b();
    if (z.n) {
      i = -2;
    }
    cr.b(a).a(2130838148, cr.b(a).getString(2131230866), paramMenuItem, i, str);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */