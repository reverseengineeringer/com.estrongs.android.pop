package com.estrongs.android.view;

import android.app.Activity;
import android.content.Intent;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.ftp.a;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.ui.view.ak;
import java.net.InetAddress;

class fu
  implements m
{
  fu(fp paramfp, k paramk, String paramString1, String paramString2, int paramInt, String paramString3) {}
  
  public void a()
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject = a.a(b, c, d, e);
        i = a.d();
        if (i != 0) {
          break label284;
        }
        if (fp.b(f))
        {
          fp.a(f, f.j(2131232169), "ftp:/" + ((a)localObject).g().toString() + ":" + d + "/");
          localObject = new Intent(f.ag, ESFtpService.class);
          f.ag.startService((Intent)localObject);
          a.b(f.ag);
          return;
        }
        if (fp.c(f))
        {
          fp.a(f, f.j(2131231645), "ftp:/" + ((a)localObject).g().toString() + ":" + d + "/");
          continue;
        }
        fp.a(f, fp.d(f), "ftp:/" + localException.g().toString() + ":" + d + "/");
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      continue;
      label284:
      String str = null;
      if (i == 1) {
        str = f.j(2131231524);
      }
      for (;;)
      {
        ak.a(f.ag, str, 0);
        if (!fp.b(f)) {
          break label360;
        }
        fp.a(f, f.j(2131232169));
        break;
        if (i == 2) {
          str = f.j(2131232578);
        }
      }
      label360:
      if (fp.c(f)) {
        fp.a(f, f.j(2131231645));
      } else {
        fp.a(f, fp.d(f));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */