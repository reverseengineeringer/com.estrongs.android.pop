package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.r;

class aw
  implements MenuItem.OnMenuItemClickListener
{
  aw(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = r.a();
    if (paramMenuItem.b())
    {
      if (paramMenuItem.d() != 2) {
        break label61;
      }
      paramMenuItem = a.k.y();
      if (paramMenuItem != null)
      {
        paramMenuItem = paramMenuItem.c();
        w.a(a, paramMenuItem, a.k.getString(2131428652));
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
        a.b.startActivity(paramMenuItem);
      }
      catch (Exception paramMenuItem) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */