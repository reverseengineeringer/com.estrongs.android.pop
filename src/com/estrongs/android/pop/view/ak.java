package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.nativetool.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.be;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.b;
import java.util.List;

class ak
  implements Runnable
{
  ak(aj paramaj) {}
  
  public void run()
  {
    boolean bool2 = false;
    be.b();
    a.a.K();
    if (!z.R) {}
    for (;;)
    {
      try
      {
        b.b();
        if ((cl.d(a.a)) && (b.a))
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
          a.a.m.m(bool1);
        }
        a.a.E.postInvalidate();
        FileExplorerActivity.P(a.a);
      }
      catch (Exception localException2)
      {
        continue;
      }
      try
      {
        c.a(FileExplorerActivity.T());
        if ((!ad.a(a.a).az()) && (!a.b())) {
          a.a.h.post(new al(this));
        }
        if (!z.ap) {
          new am(this).start();
        }
        return;
      }
      catch (Exception localException1) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */