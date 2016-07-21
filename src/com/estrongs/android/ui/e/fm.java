package com.estrongs.android.ui.e;

import android.os.Environment;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.List;

class fm
  implements MenuItem.OnMenuItemClickListener
{
  fm(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = ad.a(cr.b(a)).y();
    Object localObject = ap.bU(paramMenuItem);
    if ((localObject == null) || ((((String)localObject).equals(b.b())) && (!Environment.getExternalStorageState().equals("mounted"))))
    {
      paramMenuItem = cr.b(a).getString(2131231719) + " " + cr.b(a).getString(2131231222) + " " + paramMenuItem;
      ak.a(cr.b(a), paramMenuItem, 1);
      return false;
    }
    paramMenuItem = cr.b(a).O();
    if (paramMenuItem != null)
    {
      paramMenuItem = paramMenuItem.o();
      localObject = new ArrayList(paramMenuItem.size());
      int i = 0;
      while (i < paramMenuItem.size())
      {
        ((List)localObject).add((d)paramMenuItem.get(i));
        i += 1;
      }
      cr.b(a).ag().a(cr.b(a), (List)localObject);
    }
    cr.b(a).B();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */