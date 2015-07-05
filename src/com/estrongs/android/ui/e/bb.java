package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class bb
  implements MenuItem.OnMenuItemClickListener
{
  bb(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem instanceof WebViewWrapper)) {
      ((WebViewWrapper)paramMenuItem).r();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */