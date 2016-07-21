package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;

class fh
  implements MenuItem.OnMenuItemClickListener
{
  fh(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = a.B().b;
    paramMenuItem = str;
    if (!ap.bl(str)) {
      paramMenuItem = ap.bH(str);
    }
    ao.a(a, paramMenuItem);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */