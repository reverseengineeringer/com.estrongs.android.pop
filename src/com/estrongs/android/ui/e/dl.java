package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class dl
  implements MenuItem.OnMenuItemClickListener
{
  dl(cr paramcr) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Object localObject1 = cr.a(a);
    if (((List)localObject1).size() == 0)
    {
      ak.a(cr.b(a).getBaseContext(), 2131231551, 0);
      return true;
    }
    paramMenuItem = new LinkedList();
    LinkedList localLinkedList = new LinkedList();
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      h localh = (h)((Iterator)localObject2).next();
      if (localh.getFileType().a()) {
        localLinkedList.add(localh);
      } else {
        paramMenuItem.add(localh);
      }
    }
    if (ap.bl(((h)((List)localObject1).get(0)).getAbsolutePath())) {
      try
      {
        while (localLinkedList.size() != 0)
        {
          localObject1 = d.a(cr.b(a)).a(((h)localLinkedList.remove(0)).getAbsolutePath());
          if ((localObject1 != null) && (((List)localObject1).size() > 0))
          {
            localObject1 = ((List)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject2 = (h)((Iterator)localObject1).next();
              if (!((h)localObject2).getFileType().a()) {
                break label290;
              }
              localLinkedList.add(localObject2);
            }
          }
        }
        if (paramMenuItem.size() != 1) {
          break label302;
        }
      }
      catch (Exception localException) {}
    }
    ao.a(cr.b(a), ((h)paramMenuItem.get(0)).getAbsolutePath());
    for (;;)
    {
      cr.b(a).B();
      return true;
      label290:
      paramMenuItem.add(localObject2);
      break;
      label302:
      if (paramMenuItem.size() > 1) {
        ao.b(cr.b(a), bk.a(paramMenuItem));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */