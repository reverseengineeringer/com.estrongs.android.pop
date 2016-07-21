package com.estrongs.android.pop.view;

import com.estrongs.android.ui.c.b.h;
import com.estrongs.android.ui.navigation.m;
import com.estrongs.fs.impl.usb.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ak
  implements Runnable
{
  ak(aj paramaj, g[] paramArrayOfg, boolean paramBoolean, ArrayList paramArrayList1, ArrayList paramArrayList2) {}
  
  public void run()
  {
    Object localObject1 = e.a.ad();
    Object localObject2;
    if ((a != null) && (localObject1 != null))
    {
      localObject2 = a;
      int j = localObject2.length;
      int i = 0;
      if (i < j)
      {
        Object localObject3 = localObject2[i];
        if (b)
        {
          ((m)localObject1).b(((g)localObject3).j());
          c.add(((g)localObject3).j());
        }
        for (;;)
        {
          i += 1;
          break;
          if (!((g)localObject3).g())
          {
            ((m)localObject1).a(((g)localObject3).j(), ((g)localObject3).k());
            d.add(((g)localObject3).j());
          }
        }
      }
    }
    if ((c != null) && (d != null))
    {
      if (localObject1 != null)
      {
        localObject2 = c.iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((m)localObject1).b((String)((Iterator)localObject2).next());
        }
        localObject2 = d.iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((m)localObject1).a((String)((Iterator)localObject2).next());
        }
      }
      if (FileExplorerActivity.B(e.a) != null)
      {
        localObject1 = FileExplorerActivity.B(e.a).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (h)((Iterator)localObject1).next();
          ((h)localObject2).b(c);
          ((h)localObject2).a(d);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */