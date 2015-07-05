package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.dd;
import com.estrongs.android.ui.dialog.gs;

class aa
  implements MenuItem.OnMenuItemClickListener
{
  aa(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.k.k();
    if ((a.k.y() instanceof h)) {
      if ((w.g(a) == null) || (!w.g(a).isShowing())) {}
    }
    while ((w.h(a) != null) && (w.h(a).isShowing()))
    {
      return true;
      w.a(a, new dd(a.b));
      w.g(a).a(new ab(this));
      w.g(a).show();
      return true;
    }
    w.a(a, new gs(a.b));
    w.h(a).a(new ad(this));
    w.h(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */