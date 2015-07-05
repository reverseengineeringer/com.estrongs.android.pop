package com.estrongs.android.view;

import com.estrongs.android.ftp.a;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ak;
import java.net.InetAddress;

class dn
  implements m
{
  dn(dj paramdj, k paramk) {}
  
  public void a()
  {
    int j = 0;
    try
    {
      a locala = a.b();
      int i = j;
      if (locala != null)
      {
        i = j;
        if (locala.i())
        {
          j = ad.a(b.ad).V();
          i = 1;
          if (!dj.b(b)) {
            break label146;
          }
          dj.a(b, b.l(2131428291), "ftp:/" + locala.g().toString() + ":" + j + "/");
        }
      }
      for (;;)
      {
        a.b(b.ad);
        if (ak.a() != null) {
          break;
        }
        if (i != 0) {
          dj.a(b, false);
        }
        dj.e(b);
        return;
        label146:
        dj.a(b, dj.c(b), "ftp:/" + locala.g().toString() + ":" + j + "/");
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */