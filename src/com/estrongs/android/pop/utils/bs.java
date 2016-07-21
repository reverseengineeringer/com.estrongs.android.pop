package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.a.a.o;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class bs
  implements o
{
  bs(aq paramaq, Activity paramActivity, h paramh, List paramList) {}
  
  private void a()
  {
    Object localObject1;
    if ((a.n().size() > 0) && (ap.aY(((h)a.n().get(0)).getPath())))
    {
      Object localObject2 = new LinkedList();
      localObject1 = a.n().iterator();
      Object localObject3;
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = com.estrongs.fs.a.a.a(((h)((Iterator)localObject1).next()).getPath());
        if (!((LinkedList)localObject2).contains(localObject3)) {
          ((LinkedList)localObject2).add(localObject3);
        }
      }
      localObject1 = new LinkedList();
      localObject2 = ((LinkedList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        localObject3 = b.a().h((String)localObject3);
        if ((localObject3 != null) && (((h)localObject3).getExtra("item_count") != null) && (ao.b((h)localObject3) == 0)) {
          ((LinkedList)localObject1).add(localObject3);
        }
      }
      if (((LinkedList)localObject1).size() > 0) {
        new ab(d.a(b), (List)localObject1, false).execute(false);
      }
    }
    if (c.getExtra("child_count") != null)
    {
      ao.a(c);
      localObject1 = b.a().h(ap.bB(((h)d.get(0)).getPath()));
      if ((localObject1 != null) && (((h)localObject1).getExtra("child_count") != null)) {
        ao.a((h)localObject1);
      }
    }
    if (c.getExtra("item_count") != null) {
      ao.b(c);
    }
    if ((b instanceof FileExplorerActivity))
    {
      localObject1 = ((FileExplorerActivity)b).O();
      if ((localObject1 != null) && (ap.aY(((cr)localObject1).c()))) {
        b.runOnUiThread(new bt(this, (cr)localObject1));
      }
    }
  }
  
  public void a(com.estrongs.a.a parama, boolean paramBoolean)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */