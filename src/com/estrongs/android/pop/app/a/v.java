package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.dialog.eo;

class v
  implements MenuItem.OnMenuItemClickListener
{
  v(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = e.a(a).q();
    if (paramMenuItem != null)
    {
      eo localeo = new eo(e.a(a), e.a(a).getString(2131428322), "");
      localeo.a(new w(this, paramMenuItem));
      localeo.show();
    }
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */