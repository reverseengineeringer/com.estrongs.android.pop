package com.estrongs.android.view;

import com.estrongs.android.ftp.a;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.an;
import java.net.InetAddress;

class ft
  implements m
{
  ft(fp paramfp, k paramk) {}
  
  public void a()
  {
    int j = 0;
    for (;;)
    {
      try
      {
        a locala = a.b();
        int i = j;
        if (locala != null)
        {
          i = j;
          if (locala.i())
          {
            j = ad.a(b.ag).W();
            i = 1;
            if (!fp.b(b)) {
              continue;
            }
            fp.a(b, b.j(2131232169), "ftp:/" + locala.g().toString() + ":" + j + "/");
          }
        }
        a.b(b.ag);
        if (an.a() != null) {
          break;
        }
        if (i != 0) {
          fp.a(b, false);
        }
        fp.f(b);
        return;
        if (fp.c(b)) {
          fp.a(b, b.j(2131231645), "ftp:/" + locala.g().toString() + ":" + j + "/");
        } else {
          fp.a(b, fp.d(b), "ftp:/" + localException.g().toString() + ":" + j + "/");
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */