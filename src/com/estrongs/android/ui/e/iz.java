package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class iz
  implements MenuItem.OnMenuItemClickListener
{
  iz(iq paramiq) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = iq.a(a).A();
    String str;
    ArrayList localArrayList;
    if (paramMenuItem.size() > 0)
    {
      str = get0b;
      paramMenuItem = new ja(this, paramMenuItem);
      if (!ap.bl(str)) {
        break label99;
      }
      localArrayList = new ArrayList();
      localArrayList.add(d.a().j(str));
      ao.a(iq.a(a), localArrayList, null, paramMenuItem);
    }
    for (;;)
    {
      iq.a(a).z();
      return true;
      label99:
      str = ap.bH(str);
      localArrayList = new ArrayList();
      localArrayList.add(d.a().j(str));
      ao.a(iq.a(a), localArrayList, null, paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */