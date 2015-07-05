package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class fr
  implements MenuItem.OnMenuItemClickListener
{
  fr(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cp.b(a);
    if (((List)localObject).size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      cp.a(a).s();
      return true;
      if ((((List)localObject).size() >= 1) && ((((List)localObject).get(0) instanceof com.estrongs.fs.impl.b.c)))
      {
        paramMenuItem = new ArrayList();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramMenuItem.add((com.estrongs.fs.impl.b.c)((Iterator)localObject).next());
        }
        cp.a(a).Q().c(cp.a(a), paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */