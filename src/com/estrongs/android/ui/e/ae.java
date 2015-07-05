package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.gu;
import com.estrongs.android.ui.view.by;

class ae
  implements MenuItem.OnMenuItemClickListener
{
  ae(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (w.b(a).a()) {}
    do
    {
      return true;
      a.k.k();
    } while ((w.i(a) != null) && (w.i(a).isShowing()));
    w.a(a, new gu(a.b));
    w.i(a).a(new af(this));
    w.i(a).a(new ag(this));
    w.i(a).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */