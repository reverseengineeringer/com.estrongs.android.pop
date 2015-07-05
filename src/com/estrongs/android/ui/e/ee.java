package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class ee
  implements MenuItem.OnMenuItemClickListener
{
  ee(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (cp.b(a).size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      return true;
      AppRunner.s(cp.a(a), ((h)cp.b(a).get(0)).getAbsolutePath());
      cp.a(a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */