package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ff;
import com.estrongs.android.view.WebViewWrapper;

class ar
  implements MenuItem.OnMenuItemClickListener
{
  ar(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem instanceof WebViewWrapper))
    {
      paramMenuItem = (WebViewWrapper)paramMenuItem;
      new ff(m.a(a), false, paramMenuItem.B(), paramMenuItem.c()).a();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */