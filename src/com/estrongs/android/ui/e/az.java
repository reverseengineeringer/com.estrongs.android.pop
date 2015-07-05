package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class az
  implements MenuItem.OnMenuItemClickListener
{
  az(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (FileExplorerActivity.J() != null) {
      FileExplorerActivity.J().e(0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */