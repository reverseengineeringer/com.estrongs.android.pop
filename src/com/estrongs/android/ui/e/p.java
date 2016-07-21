package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.df;
import com.estrongs.android.ui.dialog.gv;

class p
  implements MenuItem.OnMenuItemClickListener
{
  p(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m.a(a).o();
    if ((m.a(a).O() instanceof h)) {
      if ((m.f(a) == null) || (!m.f(a).isShowing())) {}
    }
    while ((m.g(a) != null) && (m.g(a).isShowing()))
    {
      return true;
      m.a(a, new df(m.a(a)));
      m.f(a).a(new q(this));
      m.f(a).show();
      return true;
    }
    m.a(a, new gv(m.a(a)));
    m.g(a).a(new s(this));
    m.g(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */