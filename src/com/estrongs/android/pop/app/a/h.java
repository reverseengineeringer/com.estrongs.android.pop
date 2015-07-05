package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;

class h
  implements MenuItem.OnMenuItemClickListener
{
  h(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = aa).w().b;
    paramMenuItem = str;
    if (!am.ba(str)) {
      paramMenuItem = am.bq(str);
    }
    e.a(a, d.a().j(paramMenuItem));
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */