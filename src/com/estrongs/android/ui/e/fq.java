package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.List;

class fq
  implements MenuItem.OnMenuItemClickListener
{
  fq(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cr.a(a);
    ArrayList localArrayList = new ArrayList(paramMenuItem.size());
    int i = 0;
    while (i < paramMenuItem.size())
    {
      localArrayList.add((d)paramMenuItem.get(i));
      i += 1;
    }
    cr.b(a).ag().b(localArrayList);
    cr.b(a).B();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */