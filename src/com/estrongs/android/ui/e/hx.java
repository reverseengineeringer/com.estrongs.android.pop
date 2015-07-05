package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.util.List;

class hx
  implements MenuItem.OnMenuItemClickListener
{
  hx(hl paramhl) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = hl.a(a).v();
    if (paramMenuItem.size() > 0)
    {
      String str = get0b;
      paramMenuItem = str;
      if (!am.ba(str)) {
        paramMenuItem = am.bq(str);
      }
      paramMenuItem = d.a().j(paramMenuItem);
      if (paramMenuItem != null) {
        break label85;
      }
      ag.a(hl.a(a), 2131428302, 1);
    }
    for (;;)
    {
      hl.a(a).u();
      return true;
      label85:
      new hc(hl.a(a), paramMenuItem).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */