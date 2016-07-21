package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.g;
import com.estrongs.fs.impl.local.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ez
  implements MenuItem.OnMenuItemClickListener
{
  ez(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cr.a(a);
    if (((List)localObject).size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    while (((List)localObject).size() < 1) {
      return true;
    }
    if ((m.a(cr.b(a), false)) && (ad.a(cr.b(a)).ab()))
    {
      paramMenuItem = new cv(cr.b(a));
      paramMenuItem.a(cr.b(a).getText(2131231715)).b(cr.b(a).getText(2131230964)).b(2131231270, new fb(this, (List)localObject)).c(2131231265, new fa(this));
      paramMenuItem.c();
    }
    for (;;)
    {
      cr.b(a).B();
      return true;
      ArrayList localArrayList = new ArrayList();
      paramMenuItem = null;
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (ap.bm(localh.getPath()))
        {
          cr.b(a).a(localh.getPath(), localh.getAbsolutePath());
        }
        else
        {
          localArrayList.add(localh.getAbsolutePath());
          if ((localh instanceof g))
          {
            localObject = paramMenuItem;
            if (paramMenuItem == null) {
              localObject = new ArrayList();
            }
            ((List)localObject).add((g)localh);
            paramMenuItem = (MenuItem)localObject;
          }
        }
      }
      if (localArrayList.size() > 0) {
        AppRunner.a(cr.b(a), localArrayList, paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */