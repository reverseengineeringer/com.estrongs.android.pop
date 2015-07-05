package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.jw;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.b.f;
import com.estrongs.fs.h;
import java.util.List;

class hj
  implements MenuItem.OnMenuItemClickListener
{
  hj(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((cp.b(a).size() == 1) && (bc.L(((h)cp.b(a).get(0)).getAbsolutePath())))
    {
      paramMenuItem = FileExplorerActivity.J();
      f localf = new f((h)cp.b(a).get(0));
      localf.setDescription(String.format(a.b.getString(2131428731), new Object[] { am.bL(((h)cp.b(a).get(0)).getAbsolutePath()) }));
      localf.setTaskDecisionListener(new m(paramMenuItem));
      new jw(paramMenuItem, paramMenuItem.getString(2131428733), localf).show();
      localf.execute();
    }
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */