package com.estrongs.android.view;

import android.app.Activity;
import android.content.Intent;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.ftp.a;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.ui.view.ag;
import java.net.InetAddress;

class do
  implements m
{
  do(dj paramdj, k paramk, String paramString1, String paramString2, int paramInt, String paramString3) {}
  
  public void a()
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject = a.a(b, c, d, e);
        i = a.d();
        if (i == 0)
        {
          if (dj.b(f))
          {
            dj.a(f, f.l(2131428291), "ftp:/" + ((a)localObject).g().toString() + ":" + d + "/");
            localObject = new Intent(f.ad, ESFtpService.class);
            f.ad.startService((Intent)localObject);
            a.b(f.ad);
            return;
          }
          dj.a(f, dj.c(f), "ftp:/" + ((a)localObject).g().toString() + ":" + d + "/");
          continue;
        }
        str = null;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      String str;
      if (i == 1) {
        str = f.l(2131427662);
      }
      for (;;)
      {
        ag.a(f.ad, str, 0);
        if (!dj.b(f)) {
          break label289;
        }
        dj.a(f, f.l(2131428291));
        break;
        if (i == 2) {
          str = f.l(2131427663);
        }
      }
      label289:
      dj.a(f, dj.c(f));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */