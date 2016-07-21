package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.g;
import com.estrongs.io.archive.rar.a;
import com.estrongs.io.model.ArchiveEntryFile;
import java.util.ArrayList;

class by
  implements MenuItem.OnMenuItemClickListener
{
  by(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((m.a(a).O() == null) || (!(m.a(a).O() instanceof g))) {}
    do
    {
      return true;
      paramMenuItem = (g)m.a(a).O();
    } while ((paramMenuItem == null) || (paramMenuItem.p()));
    if (((paramMenuItem.r() instanceof ArchiveEntryFile)) && (((ArchiveEntryFile)paramMenuItem.r()).isRoot()) && ((paramMenuItem.s() instanceof a)) && (((a)paramMenuItem.s()).l()))
    {
      paramMenuItem.a(new ArrayList(), true);
      return true;
    }
    paramMenuItem.a(paramMenuItem.h(), false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */