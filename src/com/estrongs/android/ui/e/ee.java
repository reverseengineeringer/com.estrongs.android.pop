package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.dx;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ee
  implements MenuItem.OnMenuItemClickListener
{
  ee(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject = cr.a(a);
    if (((List)localObject).size() == 0) {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
    }
    do
    {
      do
      {
        return true;
        if (!(((List)localObject).get(0) instanceof d)) {
          break;
        }
        paramMenuItem = new ArrayList();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramMenuItem.addAll(nextb);
        }
        if (paramMenuItem.size() == 1)
        {
          new hf(cr.b(a), (h)paramMenuItem.get(0)).a();
          return true;
        }
      } while (paramMenuItem.size() <= 1);
      new dx(cr.b(a), paramMenuItem, cr.c(a)).a();
      return true;
      if (((List)localObject).size() == 1)
      {
        new hf(cr.b(a), (h)((List)localObject).get(0)).a();
        return true;
      }
    } while (((List)localObject).size() <= 1);
    new dx(cr.b(a), (List)localObject, cr.c(a)).a();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */