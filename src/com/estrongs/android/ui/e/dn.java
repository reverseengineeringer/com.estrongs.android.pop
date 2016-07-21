package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.compress.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class dn
  implements MenuItem.OnMenuItemClickListener
{
  dn(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      return true;
      ArrayList localArrayList = new ArrayList();
      paramMenuItem = paramMenuItem.iterator();
      while (paramMenuItem.hasNext()) {
        localArrayList.add(((h)paramMenuItem.next()).getAbsolutePath());
      }
      String str = cr.b(a).P();
      paramMenuItem = str;
      if (ap.bh(str)) {
        paramMenuItem = ap.bj(str);
      }
      new aj(cr.b(a), paramMenuItem, localArrayList).b();
      cr.b(a).B();
      try
      {
        paramMenuItem = cr.b(a).at();
        if (paramMenuItem != null) {
          paramMenuItem.c("Edit_Compress_UV");
        }
      }
      catch (Exception paramMenuItem)
      {
        paramMenuItem.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */