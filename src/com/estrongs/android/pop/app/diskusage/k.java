package com.estrongs.android.pop.app.diskusage;

import android.os.Handler;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.d.b;
import com.estrongs.android.view.bn;
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
    ??? = new bn(h.q(b).getAbsolutePath(), hashCode());
    File[] arrayOfFile = h.q(b).listFiles(new l(this, (bn)???));
    if (arrayOfFile != null) {
      for (;;)
      {
        try
        {
          synchronized (h.r(b))
          {
            h.a(b, new e(h.s(b)));
            tb).i.putAll(kb).i);
            h.t(b).a(b.a);
            h.t(b).a(h.u(b));
            h.t(b).b(h.a(b));
            if (!h.t(b).a(arrayOfFile))
            {
              if (b.b.equals(h.q(b).getAbsolutePath())) {
                h.v(b).remove(b.b);
              }
              h.g(b).sendEmptyMessage(2);
              return;
            }
          }
          h.t(b).a(ad.a(h.w(b)).aV());
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          ((b)h.A(b)).a(new m(this));
          return;
        }
        if (h.x(b)) {
          h.y(b);
        }
      }
    }
    ((b)h.C(b)).a(new n(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */