package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.kh;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.b.f;
import com.estrongs.fs.h;
import java.util.List;

class hr
  implements MenuItem.OnMenuItemClickListener
{
  hr(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((cr.a(a).size() == 1) && (bg.L(((h)cr.a(a).get(0)).getAbsolutePath())))
    {
      paramMenuItem = FileExplorerActivity.X();
      f localf = new f((h)cr.a(a).get(0));
      localf.setDescription(String.format(paramMenuItem.getString(2131230908), new Object[] { ap.cc(((h)cr.a(a).get(0)).getAbsolutePath()) }));
      localf.setTaskDecisionListener(new m(paramMenuItem));
      new kh(paramMenuItem, paramMenuItem.getString(2131230861), localf).show();
      localf.execute();
    }
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */