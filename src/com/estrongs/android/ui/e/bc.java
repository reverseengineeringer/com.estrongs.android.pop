package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.fc;
import com.estrongs.android.view.WebViewWrapper;

class bc
  implements MenuItem.OnMenuItemClickListener
{
  bc(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem instanceof WebViewWrapper))
    {
      paramMenuItem = (WebViewWrapper)paramMenuItem;
      new fc(a.k, false, paramMenuItem.at(), paramMenuItem.c()).a();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */