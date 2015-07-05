package com.estrongs.android.ui.e;

import android.os.Environment;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import java.util.ArrayList;
import java.util.List;

class fe
  implements MenuItem.OnMenuItemClickListener
{
  fe(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = ad.a(a.b).x();
    Object localObject = am.bD(paramMenuItem);
    if ((localObject == null) || ((((String)localObject).equals(b.b())) && (!Environment.getExternalStorageState().equals("mounted"))))
    {
      paramMenuItem = cp.a(a).getString(2131427399) + " " + cp.a(a).getString(2131428707) + " " + paramMenuItem;
      ag.a(cp.a(a), paramMenuItem, 1);
      return false;
    }
    paramMenuItem = cp.a(a).y();
    if (paramMenuItem != null)
    {
      paramMenuItem = paramMenuItem.w();
      localObject = new ArrayList(paramMenuItem.size());
      int i = 0;
      while (i < paramMenuItem.size())
      {
        ((List)localObject).add((com.estrongs.fs.impl.b.c)paramMenuItem.get(i));
        i += 1;
      }
      cp.a(a).Q().a(cp.a(a), (List)localObject);
    }
    cp.a(a).s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */