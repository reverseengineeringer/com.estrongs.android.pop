package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bc;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.cr;

class ax
  implements MenuItem.OnMenuItemClickListener
{
  ax(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper))) {
      bc.a(m.a(a).getBaseContext(), paramMenuItem.b());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */