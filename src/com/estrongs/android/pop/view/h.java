package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.bi;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.b;
import java.util.List;

class h
  implements Runnable
{
  h(g paramg) {}
  
  public void run()
  {
    boolean bool2 = false;
    bi.b();
    a.a.Y();
    if (!z.R) {}
    for (;;)
    {
      try
      {
        b.b();
        if ((cu.d(a.a)) && (b.a))
        {
          boolean bool1 = bool2;
          if (b.b)
          {
            bool1 = bool2;
            if (b.c().size() > 0) {
              bool1 = true;
            }
          }
          b.a = false;
          a.a.k.l(bool1);
        }
        a.a.A.postInvalidate();
        FileExplorerActivity.G(a.a);
      }
      catch (Exception localException3)
      {
        continue;
      }
      try
      {
        com.estrongs.android.nativetool.c.a(FileExplorerActivity.aj());
        if ((!ad.a(a.a).aA()) && (!a.b())) {
          a.a.i.post(new i(this));
        }
        if (!z.ap) {
          new j(this).start();
        }
        try
        {
          if ((FileExplorerActivity.s(a.a) != null) && (com.estrongs.android.cleaner.a.a.a.a()))
          {
            FileExplorerActivity.s(a.a).c("fb_UV");
            FileExplorerActivity.s(a.a).a("fb_PV");
          }
          com.estrongs.android.pop.app.ad.a.a().a("main");
          a.a.a(new m(this));
          return;
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */