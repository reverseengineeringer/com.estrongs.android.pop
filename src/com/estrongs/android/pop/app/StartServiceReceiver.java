package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.i.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.notification.j;
import java.util.Date;
import java.util.Random;

public class StartServiceReceiver
  extends BroadcastReceiver
{
  private static final Random a = new Random();
  
  private void a(Context paramContext, Intent paramIntent)
  {
    if (!ad.a(paramContext).P()) {
      return;
    }
    paramContext = paramIntent.getStringExtra("path");
    paramIntent = j.a(FexApplication.a());
    if (paramContext != null)
    {
      paramIntent.a(paramContext);
      return;
    }
    paramIntent.b();
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new Thread(new md(this)).start();
    if ((z.w) && (!FexApplication.a().g())) {
      return;
    }
    if ("com.estrongs.action.PERFNOTIFY".equalsIgnoreCase(paramIntent.getAction()))
    {
      int i = a.a("pre_rate", 50);
      if (new Random(System.currentTimeMillis()).nextInt(100) < i)
      {
        Date localDate1 = new Date(ad.a(FexApplication.a()).b("pre_t", 0L));
        Date localDate2 = new Date();
        if ((localDate1.getYear() != localDate2.getYear()) || (localDate1.getMonth() != localDate2.getMonth()) || (localDate1.getDay() != localDate2.getDay()))
        {
          paramIntent = new Intent(paramContext, InstallMonitorActivity.class);
          paramIntent.addFlags(276824064);
          paramContext.startActivity(paramIntent);
          ad.a(FexApplication.a()).c("pre_t", System.currentTimeMillis());
          return;
        }
      }
    }
    a(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.StartServiceReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */