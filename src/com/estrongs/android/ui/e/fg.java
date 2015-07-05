package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class fg
  implements MenuItem.OnMenuItemClickListener
{
  fg(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cp.b(a);
    paramMenuItem = new LinkedList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      h localh = (h)((Iterator)localObject).next();
      if (!localh.getFileType().a()) {
        paramMenuItem.add(localh);
      }
    }
    if (paramMenuItem.size() == 1) {
      aj.a(cp.a(a), ((h)paramMenuItem.get(0)).getAbsolutePath());
    }
    while (paramMenuItem.size() <= 1) {
      return false;
    }
    aj.b(cp.a(a), bd.a(paramMenuItem));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */