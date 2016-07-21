package com.estrongs.android.ui.e;

import android.os.Build;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.dl;

class ag
  implements MenuItem.OnMenuItemClickListener
{
  ag(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m.a(a).o();
    String str = ad.a(m.a(a)).ad();
    paramMenuItem = str;
    if (str == null) {
      paramMenuItem = m.a(a).getString(2131231917, new Object[] { Build.MODEL });
    }
    paramMenuItem = new dl(m.a(a), m.a(a).getString(2131231918), paramMenuItem, false);
    paramMenuItem.a(new ah(this));
    paramMenuItem.a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */