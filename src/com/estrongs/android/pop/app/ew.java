package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.dialog.er;

class ew
  implements MenuItem.OnMenuItemClickListener
{
  ew(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new er(a, a.getString(2131231049), "");
    paramMenuItem.a(new ex(this));
    paramMenuItem.show();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */