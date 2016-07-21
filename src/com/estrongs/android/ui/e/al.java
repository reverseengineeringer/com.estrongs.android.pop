package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.view.cr;

class al
  implements MenuItem.OnMenuItemClickListener
{
  al(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = u.a();
    if (paramMenuItem.b())
    {
      if (paramMenuItem.d() != 2) {
        break label61;
      }
      paramMenuItem = m.a(a).O();
      if (paramMenuItem != null)
      {
        paramMenuItem = paramMenuItem.c();
        m.a(a, paramMenuItem, m.a(a).getString(2131231926));
      }
    }
    for (;;)
    {
      return false;
      label61:
      paramMenuItem = new Intent("android.intent.action.VIEW");
      paramMenuItem.setData(Uri.parse("http://0.esfileexplorer.duapp.com/notify/1t"));
      try
      {
        m.a(a).startActivity(paramMenuItem);
      }
      catch (Exception paramMenuItem) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */