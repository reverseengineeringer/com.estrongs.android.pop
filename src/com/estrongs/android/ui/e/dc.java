package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.compress.a.d;
import com.estrongs.android.pop.app.compress.a.e;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class dc
  implements MenuItem.OnMenuItemClickListener
{
  dc(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    do
    {
      do
      {
        return true;
      } while (paramMenuItem.size() != 1);
      paramMenuItem = d.a(((h)paramMenuItem.get(0)).getAbsolutePath());
    } while ((paramMenuItem == null) || (!d));
    paramMenuItem = c;
    cr.b(a).d(paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */