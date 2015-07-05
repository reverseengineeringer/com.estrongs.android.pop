package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import java.util.List;

class db
  implements MenuItem.OnMenuItemClickListener
{
  db(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    Object localObject;
    do
    {
      return true;
      localObject = cp.c(a);
      if (!am.s((String)localObject)) {
        break;
      }
      localObject = cp.a(a).y();
    } while (!(localObject instanceof h));
    ((h)localObject).a(paramMenuItem);
    return true;
    if (am.ar((String)localObject))
    {
      ad.a(cp.a(a)).i(true);
      new ct(cp.a(a)).a(2131427404).b(2131428075).a(2131427339, new dc(this)).b().show();
      return true;
    }
    if (am.aq((String)localObject))
    {
      ad.a(cp.a(a)).g(true);
      new ct(cp.a(a)).a(2131427404).b(2131428073).a(2131427339, new dd(this)).b().show();
      return true;
    }
    cp.a(a).a(paramMenuItem);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */