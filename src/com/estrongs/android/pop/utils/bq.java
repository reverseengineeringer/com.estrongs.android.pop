package com.estrongs.android.pop.utils;

import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class bq
  implements Runnable
{
  bq(bp parambp) {}
  
  public void run()
  {
    try
    {
      Object localObject2 = a.a.h();
      Object localObject1 = new ArrayList();
      ((List)localObject1).addAll((Collection)localObject2);
      localObject2 = a.c.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((List)localObject1).remove((h)((Iterator)localObject2).next());
      }
      a.a.b((List)localObject1);
      if (a.d != null)
      {
        if (!a.d.startsWith("gallery")) {
          break label177;
        }
        localObject1 = b.a().h(a.d);
        if (localObject1 != null)
        {
          int i = bd.a(((h)localObject1).getExtra("item_count"), -1);
          if (i != -1) {
            ((h)localObject1).putExtra("item_count", Integer.valueOf(i - a.c.size()));
          }
        }
      }
      for (;;)
      {
        a.a.e();
        return;
        label177:
        if (am.ba(a.d))
        {
          localObject1 = b.a().h(a.d);
          if ((localObject1 != null) && (((h)localObject1).getExtra("child_count") != null)) {
            aj.a((h)localObject1);
          }
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */