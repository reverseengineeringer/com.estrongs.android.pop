package com.estrongs.android.ui.controller;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.cr;

class ae
  implements MenuItem.OnMenuItemClickListener
{
  ae(h paramh) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.a.O();
    if (paramMenuItem == null) {
      return false;
    }
    a.a.b(paramMenuItem.aq(), h.k(a));
    c.a(a.a).a("Home_Search_Wan");
    c.a(a.a).c("Home_Search_Wan_UV");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */