package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class fi
  implements MenuItem.OnMenuItemClickListener
{
  fi(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = a.B().b;
    paramMenuItem = (MenuItem)localObject;
    if (!ap.bl((String)localObject)) {
      paramMenuItem = ap.bH((String)localObject);
    }
    localObject = new ArrayList();
    ((List)localObject).add(d.a().j(paramMenuItem));
    ao.c(a, (List)localObject);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */