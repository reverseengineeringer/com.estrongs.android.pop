package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.b.f;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.am;

class y
  implements MenuItem.OnMenuItemClickListener
{
  y(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (w.b(a).a()) {}
    do
    {
      return true;
      paramMenuItem = a.k.z();
    } while (!am.bg(paramMenuItem));
    if (am.aV(paramMenuItem))
    {
      a.k.L();
      return true;
    }
    if ((am.H(paramMenuItem)) || (am.Q(paramMenuItem)) || (am.bR(paramMenuItem)) || (am.K(paramMenuItem)))
    {
      a.k.a(f.a(paramMenuItem));
      return true;
    }
    a.k.a(2131427793);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */