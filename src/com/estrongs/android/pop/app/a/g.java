package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;

class g
  implements MenuItem.OnMenuItemClickListener
{
  g(e parame) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = aa).w().b;
    paramMenuItem = (MenuItem)localObject;
    if (!am.ba((String)localObject)) {
      paramMenuItem = am.bq((String)localObject);
    }
    localObject = new ArrayList();
    ((List)localObject).add(d.a().j(paramMenuItem));
    aj.b(e.a(a), (List)localObject);
    a.d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */