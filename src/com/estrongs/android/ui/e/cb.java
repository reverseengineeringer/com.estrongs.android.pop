package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.c;
import com.estrongs.android.view.e;

class cb
  implements MenuItem.OnMenuItemClickListener
{
  cb(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((a.k.y() == null) || (!(a.k.y() instanceof e))) {}
    do
    {
      return true;
      paramMenuItem = (e)a.k.y();
    } while (paramMenuItem == null);
    new c(a.k, b, new cc(this, paramMenuItem)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */