package com.estrongs.android.pop.ftp;

import android.content.Intent;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ag;

class a
  implements m
{
  a(ESFtpShortcut paramESFtpShortcut, int paramInt, k paramk, boolean paramBoolean) {}
  
  public void a()
  {
    for (;;)
    {
      try
      {
        if (a == 1)
        {
          Object localObject = ad.a(d).T();
          int i = ad.a(d).V();
          String str1 = ad.a(d).U();
          String str2 = ad.a(d).S();
          b.a((String)localObject, str2, i, str1);
          i = b.d();
          if (i != 0)
          {
            localObject = null;
            if (i == 1)
            {
              localObject = d.getString(2131427662);
              ag.a(d, (CharSequence)localObject, 0);
              return;
            }
            if (i != 2) {
              continue;
            }
            localObject = d.getString(2131427663);
            continue;
          }
          if ((c) && (com.estrongs.android.ftp.a.e() != null)) {
            com.estrongs.android.ftp.a.e().a(true);
          }
          if (b.a.intValue() == 1)
          {
            localObject = new Intent(d, ESFtpService.class);
            d.startService((Intent)localObject);
          }
          b.b(d);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (a == 2)
      {
        b.c();
        Intent localIntent = new Intent(d, ESFtpService.class);
        d.stopService(localIntent);
      }
      else if (a == 3)
      {
        b.e();
      }
      else if (a == 4)
      {
        b.f();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ftp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */