package com.estrongs.android.view;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.by;

class v
  implements MenuItem.OnMenuItemClickListener
{
  v(u paramu) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    u.f();
    a.b();
    if (((u.a(a) instanceof FileExplorerActivity)) && ("paste_mode".equals(aa)).i.b())))
    {
      aa)).i.a("normal_mode", Boolean.valueOf(true));
      aa)).j = "normal_mode";
      aa)).r = false;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */