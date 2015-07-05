package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ay;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.aw;

class bg
  implements MenuItem.OnMenuItemClickListener
{
  bg(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper))) {
      ay.a(a.k.getBaseContext(), paramMenuItem.b());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */