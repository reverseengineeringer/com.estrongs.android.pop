package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.impl.b.d;
import java.util.Iterator;
import java.util.List;

class fx
  implements MenuItem.OnMenuItemClickListener
{
  fx(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    if (paramMenuItem.size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    for (;;)
    {
      cr.b(a).B();
      return true;
      if (paramMenuItem.size() >= 1)
      {
        if ((paramMenuItem.get(0) instanceof d))
        {
          PackageManager localPackageManager = cr.b(a).getPackageManager();
          Iterator localIterator = paramMenuItem.iterator();
          for (;;)
          {
            if (!localIterator.hasNext()) {
              break label167;
            }
            ApplicationInfo localApplicationInfo = ((d)localIterator.next()).h();
            paramMenuItem = "";
            try
            {
              String str = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(packageName, 0)).toString();
              paramMenuItem = str;
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException)
            {
              for (;;)
              {
                localNameNotFoundException.printStackTrace();
              }
            }
            ad.a(cr.b(a), packageName, paramMenuItem);
          }
        }
        label167:
        ak.a(cr.b(a).getBaseContext(), 2131232336, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */