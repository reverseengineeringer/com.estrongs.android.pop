package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.List;

class fc
  implements MenuItem.OnMenuItemClickListener
{
  fc(cp paramcp) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = cp.b(a);
    ArrayList localArrayList = new ArrayList(paramMenuItem.size());
    int i = 0;
    while (i < paramMenuItem.size())
    {
      localArrayList.add((com.estrongs.fs.impl.b.c)paramMenuItem.get(i));
      i += 1;
    }
    cp.a(a).Q().a(localArrayList);
    cp.a(a).s();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */