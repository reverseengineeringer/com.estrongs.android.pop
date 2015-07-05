package com.estrongs.android.ui.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.app.ad;

public class ChromeCastPlayerNotificationHelper$ChromeCastEventReceiver
  extends BroadcastReceiver
{
  aa a = aa.g();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ChromeCastPlayerNotificationHelper.a(ChromeCastPlayerNotificationHelper.a());
    try
    {
      paramContext = paramIntent.getAction();
      long l;
      if (paramContext.equals("com.estrongs.action.chromecast.control.preview"))
      {
        l = a.t();
        a.a(l - 5000L);
        ChromeCastPlayerNotificationHelper.k().b();
        return;
      }
      if (paramContext.equals("com.estrongs.action.chromecast.control.next"))
      {
        l = a.t();
        a.a(l + 15000L);
        ChromeCastPlayerNotificationHelper.k().b();
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if (paramContext.equals("com.estrongs.action.chromecast.control.close"))
    {
      if (ChromeCastPlayerNotificationHelper.b(ChromeCastPlayerNotificationHelper.k()) != null) {
        ChromeCastPlayerNotificationHelper.b(ChromeCastPlayerNotificationHelper.k()).e();
      }
    }
    else
    {
      if (paramContext.equals("com.estrongs.action.chromecast.control.play"))
      {
        if (a.r() == 2) {
          a.l();
        }
        for (;;)
        {
          ChromeCastPlayerNotificationHelper.k().b();
          return;
          paramContext = a.o();
          if (paramContext == null) {
            break;
          }
          if ((a.r() == 1) || (a.r() == 0)) {
            a.a(a, b, c, d, a.m());
          } else {
            a.j();
          }
        }
      }
      if (paramContext.equals("com.estrongs.action.chromecast.control.disconnect"))
      {
        a.q();
        if (ChromeCastPlayerNotificationHelper.b(ChromeCastPlayerNotificationHelper.k()) != null) {
          ChromeCastPlayerNotificationHelper.b(ChromeCastPlayerNotificationHelper.k()).e();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper.ChromeCastEventReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */