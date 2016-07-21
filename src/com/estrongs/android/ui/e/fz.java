package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class fz
  implements MenuItem.OnMenuItemClickListener
{
  fz(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cr.a(a);
    if (((List)localObject).size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      cr.b(a).B();
      return true;
      if ((((List)localObject).size() >= 1) && ((((List)localObject).get(0) instanceof d)))
      {
        paramMenuItem = new ArrayList();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramMenuItem.add((d)((Iterator)localObject).next());
        }
        cr.b(a).ag().c(cr.b(a), paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */