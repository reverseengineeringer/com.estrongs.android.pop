package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class s
  implements MenuItem.OnMenuItemClickListener
{
  s(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = aa).w().b;
    paramMenuItem = new t(this);
    ArrayList localArrayList = new ArrayList();
    if (am.ba(str))
    {
      localArrayList.add(d.a().j(str));
      aj.a(e.a(a), localArrayList, null, paramMenuItem);
    }
    for (;;)
    {
      a.d();
      return false;
      str = am.bq(str);
      localArrayList.add(d.a().j(str));
      aj.a(e.a(a), localArrayList, null, paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */