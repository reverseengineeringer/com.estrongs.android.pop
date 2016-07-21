package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.diskusage.h;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import java.util.List;

class ct
  implements MenuItem.OnMenuItemClickListener
{
  ct(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      return true;
      try
      {
        cr.b(a).at().a("Longpress_delete");
        Object localObject = cr.c(a);
        if (ap.u((String)localObject))
        {
          localObject = cr.b(a).O();
          if (!(localObject instanceof h)) {
            continue;
          }
          ((h)localObject).a(paramMenuItem);
          try
          {
            paramMenuItem = cr.b(a).at();
            if (paramMenuItem != null)
            {
              paramMenuItem.c("Delete_In_Diskusage_UV");
              return true;
            }
          }
          catch (Exception paramMenuItem)
          {
            paramMenuItem.printStackTrace();
            return true;
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
        if (ap.aB(localException))
        {
          ad.a(cr.b(a)).h(true);
          new com.estrongs.android.ui.dialog.cv(cr.b(a)).a(2131231718).b(2131232442).a(2131231270, new cu(this)).b().show();
          return true;
        }
        if (ap.aA(localException))
        {
          ad.a(cr.b(a)).f(true);
          new com.estrongs.android.ui.dialog.cv(cr.b(a)).a(2131231718).b(2131232443).a(2131231270, new cv(this)).b().show();
          return true;
        }
        cr.b(a).a(paramMenuItem);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */