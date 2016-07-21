package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.i;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.b.d;
import java.util.List;

class cz
  implements MenuItem.OnMenuItemClickListener
{
  cz(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      while (i < paramMenuItem.size())
      {
        if (i > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append(((d)paramMenuItem.get(i)).m());
        i += 1;
      }
      i.a(cr.b(a), "action.unlock_apps", localStringBuilder.toString());
      paramMenuItem = cr.b(a).O();
      if (paramMenuItem != null) {
        paramMenuItem.i(true);
      }
    }
    catch (Exception paramMenuItem)
    {
      for (;;)
      {
        paramMenuItem.printStackTrace();
      }
    }
    cr.b(a).B();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */