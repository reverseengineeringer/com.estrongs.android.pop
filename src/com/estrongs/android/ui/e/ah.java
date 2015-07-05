package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.gz;
import com.estrongs.android.ui.view.by;

class ah
  implements MenuItem.OnMenuItemClickListener
{
  ah(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (w.b(a).a()) {}
    do
    {
      return true;
      a.k.k();
    } while ((w.j(a) != null) && (w.j(a).isShowing()));
    w.a(a, new gz(a.k));
    w.j(a).a(new ai(this));
    w.j(a).a(new aj(this));
    w.j(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */