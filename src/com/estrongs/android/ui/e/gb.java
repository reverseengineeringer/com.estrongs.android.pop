package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.d;
import com.estrongs.fs.h;
import java.util.List;

class gb
  implements MenuItem.OnMenuItemClickListener
{
  gb(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if ((paramMenuItem.size() == 1) && ((((h)paramMenuItem.get(0)).getExtra("task") instanceof a))) {
      new d(cp.a(a), (h)paramMenuItem.get(0)).a();
    }
    cp.a(a).s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */