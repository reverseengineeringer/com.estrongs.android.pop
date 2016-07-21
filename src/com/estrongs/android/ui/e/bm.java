package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.analysis.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;

class bm
  implements MenuItem.OnMenuItemClickListener
{
  bm(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = m.a(a).O();
    paramMenuItem = "";
    if (localObject != null) {
      paramMenuItem = ((cr)localObject).c();
    }
    a.a().a(paramMenuItem, null);
    try
    {
      localObject = m.a(a).at();
      if (ap.ai(paramMenuItem)) {
        ((c)localObject).a("App_analysis");
      } else if (ap.bl(paramMenuItem)) {
        ((c)localObject).a("Sdcard_analysis");
      }
    }
    catch (Exception paramMenuItem)
    {
      paramMenuItem.printStackTrace();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */