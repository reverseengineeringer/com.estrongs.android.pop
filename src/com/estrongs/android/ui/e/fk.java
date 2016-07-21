package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class fk
  implements MenuItem.OnMenuItemClickListener
{
  fk(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    ArrayList localArrayList = new ArrayList(paramMenuItem.size());
    int i = 0;
    if (i < paramMenuItem.size())
    {
      h localh = (h)paramMenuItem.get(i);
      if ((localh instanceof com.estrongs.fs.impl.c.d)) {
        localArrayList.add(((com.estrongs.fs.impl.c.d)localh).a());
      }
      for (;;)
      {
        i += 1;
        break;
        localArrayList.add((com.estrongs.fs.impl.b.d)localh);
      }
    }
    cr.b(a).ag().a(localArrayList);
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */