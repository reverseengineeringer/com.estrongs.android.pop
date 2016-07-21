package com.estrongs.android.ui.e;

import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class ap
  implements MenuItem.OnMenuItemClickListener
{
  ap(m paramm) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = m.a(a).O();
    if ((paramMenuItem instanceof WebViewWrapper))
    {
      if (((WebViewWrapper)paramMenuItem).s()) {
        ((WebViewWrapper)paramMenuItem).f();
      }
    }
    else {
      return false;
    }
    m.a(a).onKeyDown(4, new KeyEvent(0, 4));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */