package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import java.util.List;

class hw
  implements MenuItem.OnMenuItemClickListener
{
  hw(hl paramhl) {}
  
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
      aj.a(hl.a(a), paramMenuItem);
    }
    hl.a(a).u();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */