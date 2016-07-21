package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import java.util.List;

class er
  implements MenuItem.OnMenuItemClickListener
{
  er(cr paramcr) {}
  
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
      cr.b(a).a(cr.b(a).getString(2131230840), paramMenuItem, true);
      return true;
    }
    paramMenuItem = new es(this, paramMenuItem);
    int i = -1;
    if (z.n) {
      i = -2;
    }
    str = b.b();
    cr.b(a).a(2130838148, cr.b(a).getString(2131230840), paramMenuItem, i, str);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */