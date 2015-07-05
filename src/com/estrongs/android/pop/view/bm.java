package com.estrongs.android.pop.view;

import com.estrongs.android.ui.c.b.t;
import com.estrongs.android.ui.navigation.n;
import com.estrongs.fs.impl.usb.g;
import java.util.ArrayList;
import java.util.Iterator;

class bm
  implements Runnable
{
  bm(bl parambl, g[] paramArrayOfg, boolean paramBoolean, ArrayList paramArrayList1, ArrayList paramArrayList2) {}
  
  public void run()
  {
    n localn = e.a.O();
    Object localObject1;
    if ((a != null) && (localn != null))
    {
      localObject1 = a;
      int j = localObject1.length;
      int i = 0;
      if (i < j)
      {
        Object localObject2 = localObject1[i];
        if (b) {
          localn.b(((g)localObject2).j());
        }
        for (;;)
        {
          i += 1;
          break;
          if (!((g)localObject2).g()) {
            localn.a(((g)localObject2).j(), ((g)localObject2).k());
          }
        }
      }
    }
    if ((c != null) && (d != null))
    {
      if (localn != null)
      {
        localObject1 = c.iterator();
        while (((Iterator)localObject1).hasNext()) {
          localn.b((String)((Iterator)localObject1).next());
        }
        localObject1 = d.iterator();
        while (((Iterator)localObject1).hasNext()) {
          localn.a((String)((Iterator)localObject1).next());
        }
      }
      if (FileExplorerActivity.F(e.a) != null)
      {
        FileExplorerActivity.F(e.a).b(c);
        FileExplorerActivity.F(e.a).a(d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */