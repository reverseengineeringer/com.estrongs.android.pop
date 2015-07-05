package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class ax
  implements MenuItem.OnMenuItemClickListener
{
  ax(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent("android.intent.action.VIEW");
    paramMenuItem.setData(Uri.parse("http://wappass.baidu.com/passport/?getpass"));
    try
    {
      a.b.startActivity(paramMenuItem);
      return false;
    }
    catch (Exception paramMenuItem)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */