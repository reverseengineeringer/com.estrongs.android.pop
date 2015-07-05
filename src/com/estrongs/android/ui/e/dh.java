package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class dh
  implements MenuItem.OnMenuItemClickListener
{
  dh(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cp.b(a);
    if (((List)localObject).size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return true;
    }
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
    for (;;)
    {
      cp.a(a).s();
      return true;
      if (paramMenuItem.size() > 1) {
        aj.b(cp.a(a), bd.a(paramMenuItem));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */