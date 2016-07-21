package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class aq
  implements MenuItem.OnMenuItemClickListener
{
  aq(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem instanceof WebViewWrapper)) {
      ((WebViewWrapper)paramMenuItem).u();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */