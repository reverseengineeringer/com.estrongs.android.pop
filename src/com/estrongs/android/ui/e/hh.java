package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ag;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import java.util.List;

class hh
  implements MenuItem.OnMenuItemClickListener
{
  hh(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return false;
    }
    if (!ad.a(cr.b(a)).aF())
    {
      new cv(cr.b(a)).a(2131232348).b(2131231897).c(2131231265, null).b(2131231270, new hi(this, paramMenuItem)).c();
      return false;
    }
    new ag(cr.b(a), (h)paramMenuItem.get(0));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */