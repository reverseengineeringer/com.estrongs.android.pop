package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.y;
import java.util.List;

class fs
  implements MenuItem.OnMenuItemClickListener
{
  fs(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return true;
    }
    try
    {
      cr.b(a).at().a("Longpress_cut");
      ba).n = false;
      ba).o = true;
      ba).x.clear();
      ba).x.addAll(paramMenuItem);
      ba).m = y.a(cr.b(a)).a(paramMenuItem, ba).n);
      cr.b(a).aq();
      cr.b(a).B();
      cr.b(a).h();
      ba).q = "paste_mode";
      return true;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */