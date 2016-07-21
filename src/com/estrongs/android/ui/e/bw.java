package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.b;
import com.estrongs.android.view.g;

class bw
  implements MenuItem.OnMenuItemClickListener
{
  bw(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((m.a(a).O() == null) || (!(m.a(a).O() instanceof g))) {}
    do
    {
      return true;
      paramMenuItem = (g)m.a(a).O();
    } while (paramMenuItem == null);
    new b(m.a(a), b, new bx(this, paramMenuItem)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */