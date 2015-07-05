package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.e;
import com.estrongs.io.archive.rar.a;
import com.estrongs.io.model.ArchiveEntryFile;
import java.util.ArrayList;

class cd
  implements MenuItem.OnMenuItemClickListener
{
  cd(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((a.k.y() == null) || (!(a.k.y() instanceof e))) {}
    do
    {
      return true;
      paramMenuItem = (e)a.k.y();
    } while ((paramMenuItem == null) || (paramMenuItem.o()));
    if (((paramMenuItem.q() instanceof ArchiveEntryFile)) && (((ArchiveEntryFile)paramMenuItem.q()).isRoot()) && ((paramMenuItem.r() instanceof a)) && (((a)paramMenuItem.r()).l()))
    {
      paramMenuItem.a(new ArrayList(), true);
      return true;
    }
    paramMenuItem.a(paramMenuItem.h(), false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */