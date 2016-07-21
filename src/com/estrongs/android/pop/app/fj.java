package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.e.iq;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;

class fj
  implements MenuItem.OnMenuItemClickListener
{
  fj(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = a.B().b;
    paramMenuItem = str;
    if (!ap.bl(str)) {
      paramMenuItem = ap.bH(str);
    }
    iq.a(a, d.a().j(paramMenuItem));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */