package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.f;
import com.estrongs.fs.impl.local.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class er
  implements MenuItem.OnMenuItemClickListener
{
  er(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cp.b(a);
    if (((List)localObject).size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    while (((List)localObject).size() < 1) {
      return true;
    }
    if ((l.a(cp.a(a), false)) && (ad.a(cp.a(a)).aa()))
    {
      paramMenuItem = new ct(cp.a(a));
      paramMenuItem.a(cp.a(a).getText(2131427400)).b(cp.a(a).getText(2131428203)).b(2131427339, new et(this, (List)localObject)).c(2131427340, new es(this));
      paramMenuItem.c();
    }
    for (;;)
    {
      cp.a(a).s();
      return true;
      ArrayList localArrayList = new ArrayList();
      paramMenuItem = null;
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (am.bb(localh.getPath()))
        {
          cp.a(a).a(localh.getPath(), localh.getAbsolutePath());
        }
        else
        {
          localArrayList.add(localh.getAbsolutePath());
          if ((localh instanceof f))
          {
            localObject = paramMenuItem;
            if (paramMenuItem == null) {
              localObject = new ArrayList();
            }
            ((List)localObject).add((f)localh);
            paramMenuItem = (MenuItem)localObject;
          }
        }
      }
      if (localArrayList.size() > 0) {
        AppRunner.a(cp.a(a), localArrayList, paramMenuItem);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */