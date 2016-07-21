package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class fo
  implements MenuItem.OnMenuItemClickListener
{
  fo(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cr.a(a);
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
      ao.a(cr.b(a), ((h)paramMenuItem.get(0)).getAbsolutePath());
    }
    while (paramMenuItem.size() <= 1) {
      return false;
    }
    ao.b(cr.b(a), bk.a(paramMenuItem));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */