package com.estrongs.android.ui.e;

import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.WebViewWrapper;

class ba
  implements MenuItem.OnMenuItemClickListener
{
  ba(w paramw) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.k.y();
    if ((paramMenuItem instanceof WebViewWrapper))
    {
      if (((WebViewWrapper)paramMenuItem).p()) {
        ((WebViewWrapper)paramMenuItem).f();
      }
    }
    else {
      return false;
    }
    a.k.onKeyDown(4, new KeyEvent(0, 4));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */