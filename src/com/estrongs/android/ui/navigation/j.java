package com.estrongs.android.ui.navigation;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class j
  implements MenuItem.OnMenuItemClickListener
{
  j(a parama) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.b(a).startActivity(new Intent("com.estrongs.action.DEFAULT_OPEN_WINDOW_LIST"));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */