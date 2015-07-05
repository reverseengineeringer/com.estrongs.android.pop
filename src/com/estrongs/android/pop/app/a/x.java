package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.eo;

class x
  implements MenuItem.OnMenuItemClickListener
{
  x(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = new eo(e.a(a), e.a(a).getString(2131428323), "");
    paramMenuItem.a(new y(this));
    paramMenuItem.show();
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */