package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.gx;

class t
  implements MenuItem.OnMenuItemClickListener
{
  t(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m.a(a).o();
    if ((m.h(a) != null) && (m.h(a).isShowing())) {
      return true;
    }
    m.a(a, new gx(m.a(a)));
    m.h(a).a(new u(this));
    m.h(a).a(new v(this));
    m.h(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */