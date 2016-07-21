package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.a.b;
import java.util.List;

class fd
  implements MenuItem.OnMenuItemClickListener
{
  fd(cr paramcr) {}
  
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
      ad.a(paramMenuItem);
      b.a().d(paramMenuItem);
      try
      {
        paramMenuItem = cr.b(a).at();
        if (paramMenuItem != null) {
          paramMenuItem.c("Edit_Hide_UV");
        }
      }
      catch (Exception paramMenuItem)
      {
        paramMenuItem.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */