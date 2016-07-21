package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class az
  implements MenuItem.OnMenuItemClickListener
{
  az(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem != null) && ((paramMenuItem instanceof WebViewWrapper)))
    {
      ((WebViewWrapper)paramMenuItem).y();
      m.a(a).h();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */