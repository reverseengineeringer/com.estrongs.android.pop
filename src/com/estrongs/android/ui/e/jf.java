package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import java.util.List;

class jf
  implements MenuItem.OnMenuItemClickListener
{
  jf(iq paramiq) {}
  
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
      paramMenuItem = d.a().j(paramMenuItem);
      if (paramMenuItem != null) {
        break label85;
      }
      ak.a(iq.a(a), 2131230822, 1);
    }
    for (;;)
    {
      iq.a(a).z();
      return true;
      label85:
      new hf(iq.a(a), paramMenuItem).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */