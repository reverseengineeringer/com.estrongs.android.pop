package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class hn
  implements MenuItem.OnMenuItemClickListener
{
  hn(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return true;
    }
    if (paramMenuItem.size() == 1)
    {
      paramMenuItem = ((h)paramMenuItem.get(0)).getAbsolutePath();
      ao.b(cr.b(a), paramMenuItem);
      paramMenuItem = cr.b(a).O();
      if ((paramMenuItem != null) && (!paramMenuItem.p())) {
        paramMenuItem.b(true);
      }
    }
    cr.b(a).B();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */