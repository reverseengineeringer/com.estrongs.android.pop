package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import java.util.List;

class ej
  implements MenuItem.OnMenuItemClickListener
{
  ej(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      cr.b(a).B();
      return true;
      LocalFileSharingActivity.a(cr.b(a), paramMenuItem, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */