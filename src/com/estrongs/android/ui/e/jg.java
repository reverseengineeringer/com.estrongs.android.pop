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

class jg
  implements MenuItem.OnMenuItemClickListener
{
  jg(iq paramiq) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = iq.a(a).A();
    if (paramMenuItem.size() > 0)
    {
      Object localObject = get0b;
      paramMenuItem = (MenuItem)localObject;
      if (!ap.bl((String)localObject)) {
        paramMenuItem = ap.bH((String)localObject);
      }
      localObject = new ArrayList();
      ((List)localObject).add(d.a().j(paramMenuItem));
      ao.c(iq.a(a), (List)localObject);
    }
    iq.a(a).z();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */