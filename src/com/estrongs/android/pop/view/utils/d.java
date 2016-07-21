package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.r;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.Map;

class d
  implements Runnable
{
  d(c paramc, boolean paramBoolean, com.estrongs.fs.h paramh) {}
  
  public void run()
  {
    String str = ap.d(c.d);
    if ((c.e) && (a)) {}
    for (;;)
    {
      synchronized (RemoteSynchronizer.c)
      {
        Object localObject1 = (RemoteSynchronizer.RemoteFile)RemoteSynchronizer.c.remove(str);
        ??? = new r(c.a, b, new f(new File(c.f.getAbsolutePath())), str);
        processData.p = false;
        processData.k = false;
        localObject1 = new e(this, c.c, c.c.getString(2131232182), (a)???, (RemoteSynchronizer.RemoteFile)localObject1, str);
        ((r)???).c(false);
        ((jh)localObject1).a(c.c.getString(2131232005), c.c.getString(2131232553));
        ((jh)localObject1).setSingleButton(c.c.getString(2131231265), f);
        ((jh)localObject1).a(false).show();
        localObject1 = ((r)???).getDecisionData(com.estrongs.a.a.h.class);
        g = 1;
        e = true;
        f = true;
        ((r)???).execute();
        return;
      }
      Object localObject3 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */