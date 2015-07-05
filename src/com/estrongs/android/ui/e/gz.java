package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.view.u;
import java.util.List;

class gz
  implements MenuItem.OnMenuItemClickListener
{
  gz(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0)
    {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
      return true;
    }
    aa).p = false;
    aa).r = true;
    aa).y.clear();
    aa).y.addAll(paramMenuItem);
    aa).o = u.a(cp.a(a)).a(paramMenuItem, aa).p);
    cp.a(a).aa();
    cp.a(a).s();
    cp.a(a).h();
    aa).i.a("paste_mode", Boolean.valueOf(true));
    aa).j = "paste_mode";
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */