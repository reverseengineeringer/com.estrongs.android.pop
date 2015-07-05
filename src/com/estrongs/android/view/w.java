package com.estrongs.android.view;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class w
  implements MenuItem.OnMenuItemClickListener
{
  w(u paramu) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (u.g().size() <= 0) {
      return false;
    }
    paramMenuItem = (FileExplorerActivity)u.a(a);
    if (!paramMenuItem.H())
    {
      paramMenuItem.d(2131428090);
      return false;
    }
    Object localObject = (LinkedList)u.g().clone();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    localObject = ((LinkedList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ac localac = (ac)((Iterator)localObject).next();
      localArrayList1.add(localac.d());
      localArrayList2.add(Boolean.valueOf(localac.f()));
    }
    a.a(localArrayList1, localArrayList2);
    paramMenuItem.s();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */