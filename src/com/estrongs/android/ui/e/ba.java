package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class ba
  implements MenuItem.OnMenuItemClickListener
{
  ba(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper)))
    {
      paramMenuItem = ((WebViewWrapper)paramMenuItem).c();
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.TEXT", paramMenuItem);
      m.a(a).startActivity(localIntent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */