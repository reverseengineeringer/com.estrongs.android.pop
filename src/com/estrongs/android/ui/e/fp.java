package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.impl.b.c;
import java.util.Iterator;
import java.util.List;

class fp
  implements MenuItem.OnMenuItemClickListener
{
  fp(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    if (paramMenuItem.size() == 0) {
      ag.a(cp.a(a).getBaseContext(), 2131427774, 0);
    }
    for (;;)
    {
      cp.a(a).s();
      return true;
      if (paramMenuItem.size() >= 1)
      {
        if ((paramMenuItem.get(0) instanceof c))
        {
          PackageManager localPackageManager = cp.a(a).getPackageManager();
          Iterator localIterator = paramMenuItem.iterator();
          for (;;)
          {
            if (!localIterator.hasNext()) {
              break label165;
            }
            ApplicationInfo localApplicationInfo = ((c)localIterator.next()).c();
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
            ad.a(a.b, packageName, paramMenuItem);
          }
        }
        label165:
        ag.a(cp.a(a).getBaseContext(), 2131428675, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */