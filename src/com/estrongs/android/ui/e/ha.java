package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ae;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import java.util.List;

class ha
  implements MenuItem.OnMenuItemClickListener
{
  ha(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return false;
    }
    if (!ad.a(a.b).aE())
    {
      new ct(cp.a(a)).a(2131428455).b(2131428461).c(2131427340, null).b(2131427339, new hb(this, paramMenuItem)).c();
      return false;
    }
    new ae(a.b, (h)paramMenuItem.get(0));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */