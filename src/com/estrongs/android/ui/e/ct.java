package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.g;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class ct
  implements MenuItem.OnMenuItemClickListener
{
  ct(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = FileExplorerActivity.J();
    Object localObject = new ArrayList();
    ((ArrayList)localObject).addAll(cp.b(a));
    localObject = new g((List)localObject);
    ((g)localObject).setDescription(String.format(a.b.getString(2131428730), new Object[] { am.bL(((h)cp.b(a).get(0)).getAbsolutePath()) }));
    ((g)localObject).setTaskDecisionListener(new m(paramMenuItem));
    new ix(paramMenuItem, paramMenuItem.getString(2131427704), (a)localObject).show();
    ((g)localObject).execute();
    paramMenuItem.s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */