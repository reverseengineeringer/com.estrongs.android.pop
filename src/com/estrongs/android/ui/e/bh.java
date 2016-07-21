package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.dialog.gd;
import com.estrongs.android.ui.view.ak;

class bh
  implements MenuItem.OnMenuItemClickListener
{
  bh(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (m.a(a).au().c() >= 12)
    {
      ak.a(m.a(a), 2131232454, 0);
      return false;
    }
    new gd(m.a(a)).a(new bi(this)).a();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */