package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class er
  implements MenuItem.OnMenuItemClickListener
{
  er(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = a.B().b;
    paramMenuItem = new es(this);
    ArrayList localArrayList = new ArrayList();
    if (ap.bl(str))
    {
      localArrayList.add(d.a().j(str));
      ao.a(a, localArrayList, null, paramMenuItem);
    }
    for (;;)
    {
      return false;
      str = ap.bH(str);
      localArrayList.add(d.a().j(str));
      ao.a(a, localArrayList, null, paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */