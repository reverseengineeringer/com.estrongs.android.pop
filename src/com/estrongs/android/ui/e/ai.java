package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.diskusage.a;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ai
  implements MenuItem.OnMenuItemClickListener
{
  ai(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((m.a(a).O() == null) || (!(m.a(a).O() instanceof h))) {}
    do
    {
      return true;
      paramMenuItem = m.a(a).O();
    } while (paramMenuItem == null);
    new a(m.a(a), (h)paramMenuItem).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */