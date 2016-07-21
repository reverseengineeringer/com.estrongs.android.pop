package com.estrongs.android.ui.controller;

import android.support.v4.view.bd;
import android.support.v7.widget.SearchView;
import android.view.MenuItem;
import android.view.SubMenu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.view.cr;

class aa
  implements bd
{
  aa(h paramh) {}
  
  public boolean a(MenuItem paramMenuItem)
  {
    h.a(a, true);
    paramMenuItem = a.a.O();
    if (paramMenuItem == null) {
      return false;
    }
    paramMenuItem = paramMenuItem.c();
    a.a(new ab(this));
    if (!a.a.h(paramMenuItem))
    {
      bool = true;
      paramMenuItem = h.i(a).getSubMenu();
      paramMenuItem.setGroupVisible(2, true);
      paramMenuItem.setGroupVisible(3, bool);
      if ((a.a.O() instanceof e)) {
        break label160;
      }
    }
    label160:
    for (boolean bool = true;; bool = false)
    {
      paramMenuItem.setGroupVisible(4, bool);
      paramMenuItem.setGroupVisible(1, false);
      h.i(a).setOnMenuItemClickListener(null);
      h.i(a).setVisible(true);
      return true;
      bool = false;
      break;
    }
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    h.a(a, false);
    h.a(a, null);
    paramMenuItem = a.a.O();
    if (paramMenuItem == null) {
      return false;
    }
    h.h(a).setOnQueryTextListener(null);
    if (paramMenuItem.p()) {
      paramMenuItem.ah();
    }
    a.a.aa();
    a.a(new ac(this));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */