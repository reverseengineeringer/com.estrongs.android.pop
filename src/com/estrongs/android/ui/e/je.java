package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import java.util.List;

class je
  implements MenuItem.OnMenuItemClickListener
{
  je(iq paramiq) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = iq.a(a).A();
    if (paramMenuItem.size() > 0)
    {
      String str = get0b;
      paramMenuItem = str;
      if (!ap.bl(str)) {
        paramMenuItem = ap.bH(str);
      }
      ao.a(iq.a(a), paramMenuItem);
    }
    iq.a(a).z();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */