package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.g;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class ht
  implements MenuItem.OnMenuItemClickListener
{
  ht(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = FileExplorerActivity.X();
    Object localObject = new ArrayList();
    ((ArrayList)localObject).addAll(cr.a(a));
    localObject = new g((List)localObject);
    ((g)localObject).setDescription(String.format(paramMenuItem.getString(2131230911), new Object[] { ap.cc(((h)cr.a(a).get(0)).getAbsolutePath()) }));
    ((g)localObject).setTaskDecisionListener(new m(paramMenuItem));
    new jh(paramMenuItem, paramMenuItem.getString(2131230980), (a)localObject).show();
    ((g)localObject).execute();
    paramMenuItem.B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */