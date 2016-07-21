package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class dj
  implements MenuItem.OnMenuItemClickListener
{
  dj(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      cr.b(a).at().a("Longpress_rename");
      paramMenuItem = cr.a(a);
      if (paramMenuItem.size() == 0)
      {
        ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
        return true;
      }
    }
    catch (Exception paramMenuItem)
    {
      for (;;)
      {
        paramMenuItem.printStackTrace();
      }
      if (paramMenuItem.size() == 1)
      {
        paramMenuItem = (h)paramMenuItem.get(0);
        ao.a(cr.b(a), paramMenuItem);
        cr.b(a).B();
        return true;
      }
      paramMenuItem = cr.b(a).O();
      if (paramMenuItem != null) {
        ao.a(cr.b(a), paramMenuItem.o());
      }
      cr.b(a).B();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */