package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class bm
  implements MenuItem.OnMenuItemClickListener
{
  bm(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper)))
    {
      paramMenuItem = ((WebViewWrapper)paramMenuItem).c();
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramMenuItem));
      a.b.startActivity(localIntent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */