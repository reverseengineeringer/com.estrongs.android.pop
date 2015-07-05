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

class hy
  implements MenuItem.OnMenuItemClickListener
{
  hy(hl paramhl) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = hl.a(a).v();
    if (paramMenuItem.size() > 0)
    {
      Object localObject = get0b;
      paramMenuItem = (MenuItem)localObject;
      if (!am.ba((String)localObject)) {
        paramMenuItem = am.bq((String)localObject);
      }
      localObject = new ArrayList();
      ((List)localObject).add(d.a().j(paramMenuItem));
      aj.b(hl.a(a), (List)localObject);
    }
    hl.a(a).u();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */