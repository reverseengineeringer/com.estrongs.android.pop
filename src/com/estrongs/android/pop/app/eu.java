package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.ui.dialog.er;

class eu
  implements MenuItem.OnMenuItemClickListener
{
  eu(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = a.v();
    if (paramMenuItem != null)
    {
      er localer = new er(a, a.getString(2131231048), "");
      localer.a(new ev(this, paramMenuItem));
      localer.show();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */