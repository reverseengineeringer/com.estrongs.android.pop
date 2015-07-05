package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class hr
  implements MenuItem.OnMenuItemClickListener
{
  hr(hl paramhl) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = hl.a(a).v();
    String str;
    ArrayList localArrayList;
    if (paramMenuItem.size() > 0)
    {
      str = get0b;
      paramMenuItem = new hs(this, paramMenuItem);
      if (!am.ba(str)) {
        break label99;
      }
      localArrayList = new ArrayList();
      localArrayList.add(d.a().j(str));
      aj.a(hl.a(a), localArrayList, null, paramMenuItem);
    }
    for (;;)
    {
      hl.a(a).u();
      return true;
      label99:
      str = am.bq(str);
      localArrayList = new ArrayList();
      localArrayList.add(d.a().j(str));
      aj.a(hl.a(a), localArrayList, null, paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */