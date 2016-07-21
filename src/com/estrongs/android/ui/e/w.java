package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.hc;

class w
  implements MenuItem.OnMenuItemClickListener
{
  w(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m.a(a).o();
    if ((m.i(a) != null) && (m.i(a).isShowing())) {
      return true;
    }
    m.a(a, new hc(m.a(a)));
    m.i(a).a(new x(this));
    m.i(a).a(new y(this));
    m.i(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */