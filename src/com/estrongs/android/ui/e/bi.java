package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class bi
  implements MenuItem.OnMenuItemClickListener
{
  bi(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper)))
    {
      paramMenuItem = (WebViewWrapper)paramMenuItem;
      paramMenuItem.ao();
      if (paramMenuItem.al()) {
        break label80;
      }
      a.b(new String[] { "zoom_in" });
    }
    while (!paramMenuItem.am())
    {
      a.b(new String[] { "zoom_out" });
      return false;
      label80:
      a.a(true, new String[] { "zoom_in" });
    }
    a.a(true, new String[] { "zoom_out" });
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */