package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.compress.ai;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class dj
  implements MenuItem.OnMenuItemClickListener
{
  dj(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      return true;
      ArrayList localArrayList = new ArrayList();
      paramMenuItem = paramMenuItem.iterator();
      while (paramMenuItem.hasNext()) {
        localArrayList.add(((h)paramMenuItem.next()).getAbsolutePath());
      }
      String str = cp.a(a).z();
      paramMenuItem = str;
      if (am.aW(str)) {
        paramMenuItem = am.aY(str);
      }
      new ai(cp.a(a), paramMenuItem, localArrayList).b();
      cp.a(a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */