package com.estrongs.android.pop.app.diskusage;

import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.RecyclerView;
import com.estrongs.android.ui.adapter.k;
import com.estrongs.fs.util.i;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class j
  extends Handler
{
  j(h paramh) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (1 == what) {
      h.d(a);
    }
    do
    {
      return;
      if (2 == what)
      {
        if (h.e(a))
        {
          long l = System.currentTimeMillis() - h.f(a);
          if (l < 2000L) {
            h.g(a).sendEmptyMessageDelayed(2, 2000L - l);
          }
        }
        for (;;)
        {
          h.b(a, 0L);
          return;
          h.h(a);
          continue;
          h.i(a);
        }
      }
      if (3 == what)
      {
        h.j(a);
        return;
      }
      if (5 == what)
      {
        paramMessage = ((List)obj).iterator();
        while (paramMessage.hasNext())
        {
          File localFile = ((u)paramMessage.next()).a();
          if (!localFile.exists())
          {
            h.k(a).b(localFile.getAbsolutePath());
          }
          else
          {
            i locali = new i(localFile, h.a(a));
            if (locali != null) {
              h.a(a, locali);
            }
            ka).i.put(localFile.getAbsolutePath(), locali);
          }
        }
        h.a(a, new k(h.l(a), h.k(a)));
        h.n(a).a(h.m(a));
        h.n(a).a(h.o(a));
        h.p(a).setAdapter(h.n(a));
        h.a(a, false);
        a.d(false);
        return;
      }
    } while (4 != what);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */