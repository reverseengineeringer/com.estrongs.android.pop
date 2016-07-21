package com.estrongs.android.pop.utils;

import com.estrongs.android.ui.dialog.im;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class by
  implements Runnable
{
  by(bx parambx) {}
  
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
      a.a.a_((List)localObject1);
      if (a.d != null)
      {
        if (!a.d.startsWith("gallery")) {
          break label187;
        }
        localObject1 = b.a().h(a.d);
        if (localObject1 != null)
        {
          int i = bk.a(((h)localObject1).getExtra("item_count"), -1);
          if (i != -1) {
            ((h)localObject1).putExtra("item_count", Integer.valueOf(i - a.c.size()));
          }
        }
      }
      for (;;)
      {
        a.a.e();
        im.a(a.e);
        return;
        label187:
        if (ap.bl(a.d))
        {
          localObject1 = b.a().h(a.d);
          if ((localObject1 != null) && (((h)localObject1).getExtra("child_count") != null)) {
            ao.a((h)localObject1);
          }
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */