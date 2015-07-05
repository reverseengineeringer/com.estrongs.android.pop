package com.estrongs.android.pop.app.diskusage;

import android.os.Handler;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.view.aj;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class k
  extends Thread
{
  k(h paramh, String paramString, List paramList)
  {
    super(paramString);
  }
  
  public void run()
  {
    ??? = new aj(h.o(b).getAbsolutePath(), hashCode());
    File[] arrayOfFile = h.o(b).listFiles(new l(this, (aj)???));
    if (arrayOfFile != null) {
      for (;;)
      {
        try
        {
          synchronized (h.p(b))
          {
            h.a(b, new e(h.q(b)));
            rb).i.putAll(kb).i);
            h.r(b).a(b.a);
            h.r(b).a(h.s(b));
            h.r(b).b(h.a(b));
            if (!h.r(b).a(arrayOfFile))
            {
              if (b.b.equals(h.o(b).getAbsolutePath())) {
                h.t(b).remove(b.b);
              }
              h.g(b).sendEmptyMessage(2);
              return;
            }
          }
          h.r(b).a(ad.a(h.u(b)).aV());
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          ((ESActivity)h.y(b)).a(new m(this));
          return;
        }
        if (h.v(b)) {
          h.w(b);
        }
      }
    }
    ((ESActivity)h.A(b)).a(new n(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */