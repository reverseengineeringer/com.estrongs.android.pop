package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class am
  implements MenuItem.OnMenuItemClickListener
{
  am(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new Intent("android.intent.action.VIEW");
    paramMenuItem.setData(Uri.parse("http://wappass.baidu.com/passport/?getpass"));
    try
    {
      m.a(a).startActivity(paramMenuItem);
      return false;
    }
    catch (Exception paramMenuItem)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */