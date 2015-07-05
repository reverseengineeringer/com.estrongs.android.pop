package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Build;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.dj;

class as
  implements MenuItem.OnMenuItemClickListener
{
  as(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    a.k.k();
    String str = ad.a(a.b).ac();
    paramMenuItem = str;
    if (str == null) {
      paramMenuItem = a.b.getString(2131428609, new Object[] { Build.MODEL });
    }
    paramMenuItem = new dj(a.b, a.b.getString(2131428597), paramMenuItem, false);
    paramMenuItem.a(new at(this));
    paramMenuItem.a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */